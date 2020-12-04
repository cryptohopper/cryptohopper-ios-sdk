//
//  HopperAPIGetShortsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

class HopperAPIGetShortsResponse: Codable {
    
    var data : [HopperShortPosition]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}


