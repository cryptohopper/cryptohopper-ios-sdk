//
//  HopperAPIGetPrecisionForCurrenciesOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPrecisionForCurrenciesOfExchangeResponse: Codable {
    
    var precisions : [String:String]?
    
    private enum CodingKeys: String, CodingKey {
        case precisions = "data"
    }
    
}
