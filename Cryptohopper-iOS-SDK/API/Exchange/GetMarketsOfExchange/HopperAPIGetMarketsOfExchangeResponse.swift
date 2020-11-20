//
//  HopperAPIGetMarketsOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetMarketsOfExchangeResponse: Codable {
    
    var pairs : [String]?
    
    private enum CodingKeys: String, CodingKey {
        case pairs = "data"
    }
    
}
