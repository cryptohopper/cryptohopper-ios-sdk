//
//  HopperAPIGetHopperDashboardStatsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation

class HopperAPIGetHopperDashboardStatsResponse: Codable {
    
    var stats : HopperDashboardStats?
    
    private enum CodingKeys: String, CodingKey {
        case stats = "data"
    }
    
}
