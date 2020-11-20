//
//  HopperAPIHopperMostTradedCurrencyResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation

public class HopperAPIHopperMostTradedCurrencyResponse: Codable {
    
    var data : [HopperMostTradedModel]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperMostTradedModel : Codable {
    
    var tradeAmount : String?
    var currency : String?
    var profit : String?
    var averageHoldingTimeInHours : String?
    
    private enum CodingKeys: String, CodingKey {
        case tradeAmount = "tradeAmount"
        case currency = "currency"
        case profit = "profit"
        case averageHoldingTimeInHours = "averageHoldingTimeInHours"
    }
    
}
