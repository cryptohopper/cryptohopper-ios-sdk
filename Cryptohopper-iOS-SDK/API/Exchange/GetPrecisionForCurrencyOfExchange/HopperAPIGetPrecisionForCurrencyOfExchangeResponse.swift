//
//  HopperAPIGetPrecisionForCurrencyOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPrecisionForCurrencyOfExchangeResponse: Codable {
    
    var precision : [String:Int]?
    
    private enum CodingKeys: String, CodingKey {
        case precision = "data"
    }
    
}
