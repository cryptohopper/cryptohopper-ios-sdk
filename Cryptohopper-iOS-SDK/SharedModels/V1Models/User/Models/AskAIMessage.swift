//
//  AskAIMessage.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

public class AskAIMessage: Codable {
    
    public private(set) var id: Int?
    public private(set) var question: String?
    public private(set) var answer: String?
    public private(set) var cache: Bool?
    public private(set) var voteId: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case question = "question"
        case answer = "answer"
        case cache = "cache"
        case voteId = "vote_id"
    }
    
}

