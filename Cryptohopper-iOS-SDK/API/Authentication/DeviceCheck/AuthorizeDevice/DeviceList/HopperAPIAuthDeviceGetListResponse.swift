//
//  HopperAPIAuthDeviceGetListResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 28/11/2022.
//

import Foundation

class HopperAPIAuthDeviceGetListResponse: Codable {
    
    var data : [HopperDevice]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
