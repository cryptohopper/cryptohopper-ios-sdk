//
//  HopperAPIGetAskAIPagesResponse.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetAskAIPagesResponse: Codable {
    
    var pages: [AskAIPage]?
    
    private enum CodingKeys: String, CodingKey {
        case pages = "data"
    }
    
}

