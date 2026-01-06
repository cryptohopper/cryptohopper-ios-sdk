//
//  AskAIChat.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

public class AskAIChat: Codable {
    
    public private(set) var messages: [AskAIMessage]?
    private var suggestionsRaw: AnyCodable?
    
    private enum CodingKeys: String, CodingKey {
        case messages = "messages"
        case suggestionsRaw = "suggestions"
    }
    
    /// Helper to get suggestions as an array
    /// The API returns suggestions as an object with string keys like {"592": {...}, "593": {...}}
    public var suggestions: [AskAISuggestion] {
        guard let raw = suggestionsRaw?.value else { return [] }
        
        if let dict = raw as? [String: Any] {
            return dict.values.compactMap { value -> AskAISuggestion? in
                guard let suggestionDict = value as? [String: Any] else { return nil }
                
                if let data = try? JSONSerialization.data(withJSONObject: suggestionDict),
                   let parsed = try? JSONDecoder().decode(AskAISuggestion.self, from: data) {
                    return parsed
                }
                return nil
            }
        }
        
        if let array = raw as? [[String: Any]] {
            return array.compactMap { suggestionDict -> AskAISuggestion? in
                if let data = try? JSONSerialization.data(withJSONObject: suggestionDict),
                   let parsed = try? JSONDecoder().decode(AskAISuggestion.self, from: data) {
                    return parsed
                }
                return nil
            }
        }
        
        return []
    }
    
}

