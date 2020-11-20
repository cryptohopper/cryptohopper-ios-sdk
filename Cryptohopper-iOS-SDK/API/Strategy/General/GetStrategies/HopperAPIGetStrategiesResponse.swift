//
//  HopperAPIGetStrategiesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetStrategiesResponse: Codable {
    
    var data : HopperAPIGetStrategiesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetStrategiesData: Codable {
    
    var strategies : [Strategy]?
    
    private enum CodingKeys: String, CodingKey {
        case strategies = "strategies"
    }
    
}


