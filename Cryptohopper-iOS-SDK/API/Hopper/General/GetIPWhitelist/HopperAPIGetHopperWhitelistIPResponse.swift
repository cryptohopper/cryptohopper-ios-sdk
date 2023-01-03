//
//  HopperAPIGetHopperWhitelistIPResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 03/01/2023.
//

import Foundation

class HopperAPIGetHopperWhitelistIPResponse: Codable {
    
    var data : CHIPWhitelist?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
