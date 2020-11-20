//
//  HopperCommonMessageResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation

class HopperCommonMessageResponse: Codable {
    
    var data : String?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
