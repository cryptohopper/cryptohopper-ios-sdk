//
//  HopperAPIGetAIsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/12/2021.
//

import Foundation

class HopperAPIGetAIsResponse: Codable {
    
    var data : [AI]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
