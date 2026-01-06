//
//  HopperAPINewAskAISessionResponse.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPINewAskAISessionResponse: Codable {
    
    var chat: AskAIChat?
    
    private enum CodingKeys: String, CodingKey {
        case chat = "data"
    }
    
}

