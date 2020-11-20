//
//  HopperAPIGetMarketStrategiesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetMarketStrategiesResponse: Codable {
    
    var data : HopperAPIGetMarketStrategiesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetMarketStrategiesData: Codable {
    
    var strategies : [Strategy]?
    
    private enum CodingKeys: String, CodingKey {
        case strategies = "strategies"
    }
    
}
