//
//  HopperAPIGetUserProfileResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserProfileResponse: Codable {
    
    var userProfile : UserProfile?
    
    private enum CodingKeys: String, CodingKey {
        case userProfile = "data"
    }
    
}
