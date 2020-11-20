//
//  ExchangeForexRates.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class ExchangeForexRates : Codable {
    
    var quoteCurrency : String?
    var currency : String?
    var exchangeRate : String?
    
    private enum CodingKeys: String, CodingKey {
        case quoteCurrency = "quoteCurrency"
        case currency = "currency"
        case exchangeRate = "exchange_rate"
    }
    
}
