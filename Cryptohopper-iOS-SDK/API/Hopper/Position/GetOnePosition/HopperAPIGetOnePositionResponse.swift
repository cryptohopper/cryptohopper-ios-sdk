//
//  HopperAPIGetOnePositionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation

class HopperAPIGetOnePositionResponse: Codable {
    
    var data : HopperPosition?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
