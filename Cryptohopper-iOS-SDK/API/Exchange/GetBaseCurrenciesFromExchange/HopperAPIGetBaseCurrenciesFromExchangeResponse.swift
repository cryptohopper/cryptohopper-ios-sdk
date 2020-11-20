//
//  HopperAPIGetBaseCurrenciesFromExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetBaseCurrenciesFromExchangeResponse: Codable {
    
    var baseCurrencies : [String:[String:String]]?
    
    private enum CodingKeys: String, CodingKey {
        case baseCurrencies = "data"
    }
    
}
