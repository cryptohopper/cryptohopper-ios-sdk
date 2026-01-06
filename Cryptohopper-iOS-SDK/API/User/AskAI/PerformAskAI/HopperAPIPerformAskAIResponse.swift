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
    
}

