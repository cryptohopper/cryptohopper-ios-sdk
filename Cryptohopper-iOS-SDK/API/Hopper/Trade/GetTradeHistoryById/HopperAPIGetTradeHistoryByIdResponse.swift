//
//  HopperAPIGetTradeHistoryByIdResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTradeHistoryByIdResponse: Codable {
    
    var data : HopperOrder?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
