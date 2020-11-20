//
//  HopperAPIGetTradingPairOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation


class HopperAPIGetTradingPairOfExchangeResponse: Codable {
    
    var pairCode : String?
    
    private enum CodingKeys: String, CodingKey {
        case pairCode = "data"
    }
    
}
