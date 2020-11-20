//
//  HopperAPIGetBaseCurrencyFromExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetBaseCurrencyFromExchangeResponse: Codable {
    
    var baseCurrency : [String:String]?
    
    private enum CodingKeys: String, CodingKey {
        case baseCurrency = "data"
    }
    
}
