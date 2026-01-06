//
//  HopperAPIVoteAskAIResponse.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIVoteAskAIResponse: Codable {
    
    var data: String?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
