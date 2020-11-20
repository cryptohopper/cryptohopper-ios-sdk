//
//  HopperAPIGetSignalStatsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetSignalStatsResponse: Codable {
    
    var data : MarketSignalStat?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
