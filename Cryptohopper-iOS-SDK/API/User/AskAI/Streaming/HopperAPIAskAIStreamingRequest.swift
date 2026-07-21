//
//  HopperAPIAskAIStreamingRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation
import UIKit

/// Calls POST /v1/user/askai and handles BOTH response shapes:
/// - text/event-stream (AI Gateway active): incremental AskAIStreamEvents
/// - application/json (legacy path): decoded AskAIAnswer in the completion
final class HopperAPIAskAIStreamingRequest: NSObject, URLSessionDataDelegate {

    private let page: String
    private let question: String
    private let onEvent: (AskAIStreamEvent) -> Void
    private let completion: (Result<AskAIAnswer?, Error>) -> Void

    private let parser = AskAIStreamParser()
    private var urlSession: URLSession?
    private var isEventStream = false
    private var jsonBody = Data()
    private var completed = false

    init(page: String,
         question: String,
         onEvent: @escaping (AskAIStreamEvent) -> Void,
         completion: @escaping (Result<AskAIAnswer?, Error>) -> Void) {
        self.page = page
        self.question = question
        self.onEvent = onEvent
        self.completion = completion
        super.init()
    }

    func start() {
        HopperAPISessionManager.shared.checkAuthentication(onSuccess: { [weak self] in
            guard let self = self else { return }
            guard let accessToken = HopperAPISessionManager.shared.session?.accessToken else {
                self.finish(.failure(HopperError.missingAccessToken))
                return
            }
            self.startRequest(accessToken: accessToken)
        }, onFail: { [weak self] error in
            self?.finish(.failure(error))
        })
    }

    private func startRequest(accessToken: String) {
        var components = URLComponents()
        let config = HopperAPIConfigurationManager.shared.config
        components.scheme = config.urlScheme
        components.host = config.host
        components.path = "/v1/user/askai"
        guard let url = components.url else {
            finish(.failure(HopperError.missingUrl))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("text/event-stream, application/json", forHTTPHeaderField: "Accept")
        request.setValue("iOS", forHTTPHeaderField: "Platform")
        request.setValue(UIDevice.current.identifierForVendor?.uuidString ?? "", forHTTPHeaderField: "DeviceId")
        request.setValue(config.apiBasicValidationValue, forHTTPHeaderField: config.apiBasicValidationKey)
        request.setValue(accessToken, forHTTPHeaderField: "access-token")
        request.httpBody = try? JSONSerialization.data(withJSONObject: ["page": page, "question": question])

        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.timeoutIntervalForRequest = 120 // gateway upstream timeout is 90s
        let session = URLSession(configuration: sessionConfig, delegate: self, delegateQueue: nil)
        urlSession = session
        session.dataTask(with: request).resume()
    }

    // MARK: - URLSessionDataDelegate

    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask,
                    didReceive response: URLResponse,
                    completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        let contentType = Self.headerValue("Content-Type", in: response)?.lowercased() ?? ""
        isEventStream = contentType.contains("text/event-stream")
        completionHandler(.allow)
    }

    /// Case-insensitive header lookup. `HTTPURLResponse.value(forHTTPHeaderField:)`
    /// is iOS 13+ only; this SDK's deployment target is iOS 12, so headers are
    /// read directly from `allHeaderFields` instead.
    private static func headerValue(_ name: String, in response: URLResponse?) -> String? {
        guard let httpResponse = response as? HTTPURLResponse else { return nil }
        for (key, value) in httpResponse.allHeaderFields {
            if let key = key as? String, key.caseInsensitiveCompare(name) == .orderedSame {
                return value as? String
            }
        }
        return nil
    }

    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        if isEventStream {
            emit(parser.feed(data))
        } else {
            jsonBody.append(data)
        }
    }

    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        defer { urlSession?.finishTasksAndInvalidate() }
        if let error = error {
            finish(.failure(error))
            return
        }
        if isEventStream {
            emit(parser.flush())
            finish(.success(nil))
            return
        }
        // JSON fallback: decode like HopperAPIPerformAskAIRequest does.
        let statusCode = (task.response as? HTTPURLResponse)?.statusCode ?? 0
        do {
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .secondsSince1970
            if statusCode >= 200 && statusCode < 300 {
                let response = try decoder.decode(HopperAPIPerformAskAIResponse.self, from: jsonBody)
                finish(.success(response.answer))
            } else {
                let apiError = try decoder.decode(HopperAPIError.self, from: jsonBody)
                finish(.failure(apiError.error))
            }
        } catch {
            finish(.failure(error))
        }
    }

    // MARK: - Helpers

    private func emit(_ events: [AskAIStreamEvent]) {
        guard !events.isEmpty else { return }
        DispatchQueue.main.async {
            events.forEach { self.onEvent($0) }
        }
    }

    private func finish(_ result: Result<AskAIAnswer?, Error>) {
        guard !completed else { return }
        completed = true
        DispatchQueue.main.async {
            self.completion(result)
        }
    }
}
