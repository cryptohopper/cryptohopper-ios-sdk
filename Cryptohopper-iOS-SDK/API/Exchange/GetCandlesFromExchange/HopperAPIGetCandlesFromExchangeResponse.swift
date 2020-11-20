//
//  HopperAPIGetCandlesFromExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetCandlesFromExchangeResponse: Codable {
    
    var candles : [Candle]?
    
    private enum CodingKeys: String, CodingKey {
        case candles = "data"
    }
    
}
