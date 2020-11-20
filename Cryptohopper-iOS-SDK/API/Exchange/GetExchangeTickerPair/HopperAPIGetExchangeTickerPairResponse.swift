//
//  HopperAPIGetExchangeTickerPairResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetExchangeTickerPairResponse: Codable {
    
    var ticker : Ticker?
    
    private enum CodingKeys: String, CodingKey {
        case ticker = "data"
    }
    
}
