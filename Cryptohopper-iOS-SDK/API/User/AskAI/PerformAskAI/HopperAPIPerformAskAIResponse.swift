//
//  HopperAPIPerformAskAIResponse.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIPerformAskAIResponse: Codable {

    var answer: AskAIAnswer?

    private enum CodingKeys: String, CodingKey {
        case answer = "data"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let object = try? container.decodeIfPresent(AskAIAnswer.self, forKey: .answer) {
            answer = object
        } else if let text = try? container.decodeIfPresent(String.self, forKey: .answer) {
            // Suggestion answers come back as a bare string in `data`
            // (askAiSuggestion in the monolith) instead of the object the
            // typed-question path returns.
            answer = AskAIAnswer(content: text)
        }
    }

}

