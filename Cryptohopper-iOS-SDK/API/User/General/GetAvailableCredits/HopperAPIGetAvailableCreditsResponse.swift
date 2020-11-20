//
//  HopperAPIGetAvailableCreditsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetAvailableCreditsResponse : Codable {
    
    var credit : Int?
    
    private enum CodingKeys: String, CodingKey {
        case credit = "data"
    }
    
}
