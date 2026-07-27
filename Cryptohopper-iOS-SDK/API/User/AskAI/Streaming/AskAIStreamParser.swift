//
//  AskAIStreamParser.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// Incremental parser for the Ask AI SSE stream.
/// Feed raw body chunks as they arrive; complete frames (separated by a
/// blank line) are parsed into events. Buffers as Data so multi-byte
/// UTF-8 characters split across chunks survive.
public final class AskAIStreamParser {

    private var buffer = Data()

    public init() {}

    public func feed(_ chunk: Data) -> [AskAIStreamEvent] {
        buffer.append(chunk)
        var events: [AskAIStreamEvent] = []
        let lflf = Data("\n\n".utf8)
        let crlfcrlf = Data("\r\n\r\n".utf8)
        while true {
            let lfRange = buffer.range(of: lflf)
            let crRange = buffer.range(of: crlfcrlf)
            let separator: Range<Data.Index>
            switch (lfRange, crRange) {
            case (nil, nil):
                return events
            case (let lf?, nil):
                separator = lf
            case (nil, let cr?):
                separator = cr
            case (let lf?, let cr?):
                separator = lf.lowerBound < cr.lowerBound ? lf : cr
            }
            let frameData = buffer.subdata(in: buffer.startIndex..<separator.lowerBound)
            buffer.removeSubrange(buffer.startIndex..<separator.upperBound)
            if let event = Self.parseFrame(frameData) {
                events.append(event)
            }
        }
    }

    /// Emit any trailing frame that never got its blank-line terminator
    /// (e.g. the connection closed right after the last event).
    public func flush() -> [AskAIStreamEvent] {
        defer { buffer.removeAll() }
        guard !buffer.isEmpty, let event = Self.parseFrame(buffer) else { return [] }
        return [event]
    }

    static func parseFrame(_ frameData: Data) -> AskAIStreamEvent? {
        guard let raw = String(data: frameData, encoding: .utf8) else { return nil }
        // Normalize CRLF to LF before splitting: Swift's String treats "\r\n"
        // as a single Character (grapheme cluster), so splitting on the "\n"
        // Character alone would never break at a CRLF line ending.
        let normalized = raw.replacingOccurrences(of: "\r\n", with: "\n")
        let lines = normalized.split(separator: "\n", omittingEmptySubsequences: false)
            .map { $0.trimmingCharacters(in: CharacterSet(charactersIn: "\r")) }

        var eventName: String?
        var dataLines: [String] = []
        for line in lines {
            if line.hasPrefix("event:") {
                if eventName == nil {
                    eventName = String(line.dropFirst("event:".count)).trimmingCharacters(in: .whitespaces)
                }
            } else if line.hasPrefix("data:") {
                var value = String(line.dropFirst("data:".count))
                if value.hasPrefix(" ") { value.removeFirst() }
                dataLines.append(value)
            }
            // Lines starting with ":" are comments (pings); ignore.
        }

        let joined = dataLines.joined(separator: "\n")
        guard let jsonData = joined.data(using: .utf8),
              let payload = (try? JSONSerialization.jsonObject(with: jsonData)) as? [String: Any] else {
            return nil
        }

        let kind = eventName ?? (payload["type"] as? String)
        switch kind {
        case "delta":
            guard let content = payload["content"] as? String else { return nil }
            return .delta(text: content)
        case "done", "final":
            if let errorMessage = payload["error"] as? String, !errorMessage.isEmpty {
                return .error(message: errorMessage)
            }
            return .done(runId: payload["run_id"] as? String,
                         sessionId: payload["session_id"] as? String)
        case "error":
            return .error(message: (payload["message"] as? String) ?? "Unknown stream error")
        default:
            // conversation / tool_call / tool_result / metadata / unknown: ignore.
            return nil
        }
    }
}
