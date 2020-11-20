//
//  HopperAPIGetAllTickerOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetAllTickerOfExchangeResponse: Codable {
    
    var pairTickers : [String:Ticker]?
    
    private enum CodingKeys: String, CodingKey {
        case pairTickers = "data"
    }
    
}
