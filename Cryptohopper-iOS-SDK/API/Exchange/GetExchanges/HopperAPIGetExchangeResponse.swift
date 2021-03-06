//
//  HopperAPIGetExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetExchangeResponse: Codable {
    
    var exchanges : [Exchange]?
    
    private enum CodingKeys: String, CodingKey {
        case exchanges = "data"
    }
    
}
