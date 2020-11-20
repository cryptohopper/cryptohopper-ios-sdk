//
//  HopperAPIGetUserEmailResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserEmailResponse : Codable {
    
    var email : String?
    
    private enum CodingKeys: String, CodingKey {
        case email = "data"
    }
    
}
