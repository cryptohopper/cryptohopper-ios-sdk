//
//  HopperAPIV2TestApiKeyResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/01/2023.
//

import Foundation

class HopperAPIV2TestApiKeyResponse: Codable {
    
    var balances : [String:Double]?
    
    private enum CodingKeys: String, CodingKey {
        case balances = "balances"
    }
    
}
