//
//  HopperAPIV2CheckUsernameResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation

class HopperAPIV2CheckUsernameResponse: Codable {
    
    var exists : Bool?
    
    private enum CodingKeys: String, CodingKey {
        case exists = "exists"
    }
    
}
