//
//  HopperAPICheck2FAResetResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 16/06/2022.
//

import Foundation

class HopperAPICheck2FAResetResponse: Codable {
    
    var data : Bool?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
