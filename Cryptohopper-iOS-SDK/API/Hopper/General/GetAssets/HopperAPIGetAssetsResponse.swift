//
//  HopperAPIGetAssetsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 10/06/2021.
//

import Foundation

class HopperAPIGetAssetsResponse: Codable {
    
    var data : [String:Double]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
