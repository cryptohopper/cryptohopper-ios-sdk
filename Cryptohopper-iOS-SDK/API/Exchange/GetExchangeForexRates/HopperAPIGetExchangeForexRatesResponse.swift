//
//  HopperAPIGetExchangeForexRatesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetExchangeForexRatesResponse: Codable {
    
    var forexRates : [ExchangeForexRates]?
    
    private enum CodingKeys: String, CodingKey {
        case forexRates = "data"
    }
    
}
