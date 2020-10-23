//
//  HopperAPIRequest.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

public enum HopperAPIHttpMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}


typealias HopperAPIRequestFailClosure = (Error) -> ()
typealias HopperAPIEmptySuccessClosure = ()->()

class HopperAPIRequest<T:Codable> {

    typealias HopperAPIRequestSuccessClosure = (T) -> ()
    
    var path:String {
        return "/"
    }
    var httpMethod:HopperAPIHttpMethod {
        return .GET
    }
    var needsAuthentication:Bool {
        return true
    }
    var dateDecodingStrategy:JSONDecoder.DateDecodingStrategy {
        return .secondsSince1970
    }
    
    private var httpHeaders:[String:String] = [
        "Content-Type":"application/json",
        "Accept":"application/json"
    ]
    
    private var queryItems:[URLQueryItem]?
    private var bodyItems:[String:Any]?
    
    
    var url: URL? {
        var components = URLComponents()
        components.scheme = HopperAPIConfigurationManager.shared.config.urlScheme
        components.host = HopperAPIConfigurationManager.shared.config.host
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
    
    func addHeader(name:String, value:String) {
        httpHeaders[name] = value
    }
    
    
    func addQueryItem(name:String, value:String?) {
        if queryItems == nil {
            queryItems = []
        }
        queryItems?.append(.init(name: name, value: value))
    }
    
    func addBodyItem(name:String, value:Any) {
        if bodyItems == nil {
            bodyItems = [:]
        }
        bodyItems?[name] = value
    }
    
    func handleError(failClosure: HopperAPIRequestFailClosure?, error:Error) {
        if HopperAPIConfigurationManager.shared.config.debugModeEnabled {
            print(error.localizedDescription)
        }
        failClosure?(error)
    }
    
    private func generateRequest(url:URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = self.httpMethod.rawValue
        self.httpHeaders.forEach({request.setValue($0.value, forHTTPHeaderField: $0.key)})
               
        if let bodyItems = self.bodyItems, let bodyData = try? JSONSerialization.data(withJSONObject: bodyItems, options: []) {
           request.httpBody = bodyData
        }
        return request
    }
    
    func startRequest(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil) {
        guard let url = self.url else {
            self.handleError(failClosure: onFail, error: HopperError.missingUrl)
            return
        }
        let session = URLSession.shared
        let request = generateRequest(url: url)
        
        let task = session.dataTask(with: request) { (data, response, error) in
          
            if let error = error {
                onFail?(error)
            } else if let data = data {
                
                if HopperAPIConfigurationManager.shared.config.debugModeEnabled {
                    if let responseStr = String(data: data, encoding: .utf8) {
                        print(responseStr)
                    }
                }
                
                //On success
                let responseOK = {
                    do {
                      let decoder = JSONDecoder()
                      decoder.dateDecodingStrategy = self.dateDecodingStrategy
                        let response = try decoder.decode(T.self , from: data)
                        onSuccess?(response)

                    } catch {
                        onFail?(error)
                    }
                }
                
                //On fail
                let apiError = {
                    do {
                      let decoder = JSONDecoder()
                      decoder.dateDecodingStrategy = self.dateDecodingStrategy
                        let response = try decoder.decode(HopperAPIError.self , from: data)
                        onFail?(response.error)

                    } catch {
                        onFail?(error)
                    }
                }
                
                if let response = response as? HTTPURLResponse {
                    if response.statusCode >= 200 && response.statusCode < 300 {
                        responseOK()
                    }
                    else {
                        apiError()
                    }
                }
                

                
            }
        }
        
        task.resume()
    }
    
    
    func request(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil) {
        if needsAuthentication {
            self.authenticateAndRequestAgain(onSuccess, onFail)
        }else {
            startRequest({ (response) in
                onSuccess?(response)
            }) { (error) in
                if let error = error as? HopperError {
                    switch  error {
                    case .AccessTokenExpired,
                         .InvalidAccessToken,
                         .InvalidSession:
                        self.authenticateAndRequestAgain(onSuccess, onFail)
                    default:
                        onFail?(error)
                    }
                }else {
                    onFail?(error)
                }
            }
        }
    }
    
    func authenticateAndRequestAgain(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil){
        HopperAPISessionManager.shared.checkAuthentication(onSuccess: {
            guard let accessToken = HopperAPISessionManager.shared.session?.accessToken else {
                self.handleError(failClosure: onFail, error: HopperError.missingAccessToken)
                return
            }
            self.addHeader(name: "accessToken", value: accessToken)
            self.startRequest(onSuccess, onFail)
        }, onFail: onFail)
    }

}
