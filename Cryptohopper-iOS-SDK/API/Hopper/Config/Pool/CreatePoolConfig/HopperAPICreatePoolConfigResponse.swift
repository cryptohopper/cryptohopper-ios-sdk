//
//  HopperAPICreateConfigPoolResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

class HopperAPICreatePoolConfigResponse: Codable {
    
    var id : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
    }
    
}
