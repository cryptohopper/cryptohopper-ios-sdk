//
//  HopperAPIGetAvailableStrategiesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetAvailableStrategiesResponse: Codable {
    
    var data : HopperAPIGetAvailableStrategiesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetAvailableStrategiesData: Codable {
    
    var strategy : [MarketStrategy]?
    
    private enum CodingKeys: String, CodingKey {
        case strategy = "strategy"
    }
    
}
