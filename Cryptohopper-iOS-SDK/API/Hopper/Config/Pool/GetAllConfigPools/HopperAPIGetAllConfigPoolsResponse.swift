//
//  HopperAPIGetAllConfigPoolsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

class HopperAPIGetAllConfigPoolsResponse: Codable {
    
    var data : [HopperConfigPool]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
