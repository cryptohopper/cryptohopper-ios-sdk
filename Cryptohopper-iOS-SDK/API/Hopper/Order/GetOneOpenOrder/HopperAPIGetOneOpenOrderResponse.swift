//
//  HopperAPIGetOneOpenOrderResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

class HopperAPIGetOneOpenOrderResponse: Codable {
    
    var data : HopperOrder?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
