//
//  HopperAPIUpdateConfigResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

class HopperAPIUpdateConfigResponse: Codable {
    
    var data : HopperAPIUpdateConfigData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIUpdateConfigData : Codable {
    
    var hoppers:HopperConfig?
    
    private enum CodingKeys: String, CodingKey {
        case hoppers = "config"
    }
    
}
