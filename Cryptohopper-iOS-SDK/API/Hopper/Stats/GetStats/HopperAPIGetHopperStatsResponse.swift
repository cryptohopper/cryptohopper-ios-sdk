//
//  HopperAPIGetHopperStatsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 23/12/2020.
//

import Foundation

public class HopperAPIGetHopperStatsResponse: Codable {
    
    var data : HopperStats?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

