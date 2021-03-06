//
//  HopperAPIGetTradeHistoryResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTradeHistoryResponse: Codable {
    
    var data : HopperAPIGetTradeHistoryData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetTradeHistoryData: Codable {
    
    var trades : [HopperTradeHistory]?
    
    private enum CodingKeys: String, CodingKey {
        case trades = "trades"
    }
    
}
