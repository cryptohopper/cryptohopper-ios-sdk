//
//  AskAIStreamEvent.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// One normalized event from the Ask AI SSE stream.
public enum AskAIStreamEvent {
    case delta(text: String)
    case done(runId: String?, sessionId: String?)
    case error(message: String)
}
