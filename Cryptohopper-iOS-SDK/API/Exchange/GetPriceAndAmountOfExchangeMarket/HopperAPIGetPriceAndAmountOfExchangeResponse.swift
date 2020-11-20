//
//  HopperAPIGetPriceAndAmountOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPriceAndAmountOfExchangeResponse: Codable {
    
    var decimals : [String:String]?
    
    private enum CodingKeys: String, CodingKey {
        case decimals = "data"
    }
    
}
