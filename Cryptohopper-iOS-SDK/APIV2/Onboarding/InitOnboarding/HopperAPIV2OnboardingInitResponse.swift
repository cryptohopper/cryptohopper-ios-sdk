//
//  HopperAPIV2OnboardingInitResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation

class HopperAPIV2OnboardingInitResponse: Codable {
    
    var id : Int?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
    }
    
}
