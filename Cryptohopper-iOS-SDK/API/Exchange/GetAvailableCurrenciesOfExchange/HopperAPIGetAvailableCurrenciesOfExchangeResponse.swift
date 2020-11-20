//
//  HopperAPIGetAvailableCurrenciesOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetAvailableCurrenciesOfExchangeResponse: Codable {
    
    var currencies : [String:ExchangeCurrencyDetail]?
    
    private enum CodingKeys: String, CodingKey {
        case currencies = "data"
    }
    
}
