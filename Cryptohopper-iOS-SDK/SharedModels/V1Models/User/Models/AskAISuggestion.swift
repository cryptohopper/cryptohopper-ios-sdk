//
//  AskAISuggestion.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

public class AskAISuggestion: Codable {
    
    public private(set) var id: String?
    public private(set) var question: String?
    public private(set) var answer: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case question = "question"
        case answer = "answer"
    }
    
}

