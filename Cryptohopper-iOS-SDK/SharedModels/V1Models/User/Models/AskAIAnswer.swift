//
//  AskAIAnswer.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

public class AskAIAnswer: Codable {
    
    public private(set) var id: Int?
    public private(set) var content: String?
    public private(set) var fromCache: Bool?
    public private(set) var question: String?
    public private(set) var voteId: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case content = "content"
        case fromCache = "from_cache"
        case question = "question"
        case voteId = "vote_id"
    }

    /// Suggestion answers arrive from the API as a bare string in `data`
    /// instead of an object; this lets the response wrap them.
    internal init(content: String?) {
        self.content = content
    }

}

