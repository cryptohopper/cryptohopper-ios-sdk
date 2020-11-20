//
//  HopperAPIGetSingleCurrencyOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetSingleCurrencyOfExchangeResponse: Codable {
    
    var detail : ExchangeCurrencyDetail?
    
    private enum CodingKeys: String, CodingKey {
        case detail = "data"
    }
    
}
