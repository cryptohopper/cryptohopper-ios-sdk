//
//  AskAIStreamEvent.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// One normalized event from the Ask AI SSE stream.
public enum AskAIStreamEvent {
    case delta(text: String)
    /// The assistant started running a tool. `name` is nil when the frame
    /// omits it — the UI only needs it for a "Working…" style status.
    case toolCall(name: String?)
    /// A tool finished. Carries no payload: the answer itself arrives as
    /// deltas, so this only tells the UI it can clear the tool status.
    case toolResult
    /// The assistant wants explicit approval before running a trading tool.
    /// Answer it with `CryptohopperUser.confirmAskAIAction(confirmId:action:)`.
    /// Confirmations expire server-side (5 minutes); an expired one comes
    /// back as a normal `.error`.
    case confirm(confirmId: String, toolName: String?, description: String?)
    case done(runId: String?, sessionId: String?)
    case error(message: String)
}

/// The answer to an `AskAIStreamEvent.confirm`: run the tool, or don't.
public enum AskAIConfirmAction: String {
    case confirm = "confirm"
    case cancel = "cancel"
}
