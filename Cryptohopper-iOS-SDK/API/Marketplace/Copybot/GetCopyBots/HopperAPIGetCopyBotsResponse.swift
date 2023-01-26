//
//  HopperAPIGetCopyBotsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 26/01/2023.
//

import Foundation

class HopperAPIGetCopyBotsResponse: Codable {
    
    var data : GetCopyBotsResponse?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class GetCopyBotsResponse : Codable {
    
    var copybots : [MarketCopyBot]?
    
    private enum CodingKeys: String, CodingKey {
        case copybots = "copybots"
    }
}
