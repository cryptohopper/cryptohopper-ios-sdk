//
//  HopperAPIGetActivityResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 21/02/2022.
//

import Foundation

class HopperAPIGetActivityResponse: Codable {
    
    var data : HopperActivity?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
