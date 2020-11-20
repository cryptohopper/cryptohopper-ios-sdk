//
//  HopperAPIGetUserMetadataResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserMetadataResponse : Codable {
    
    var metadata : UserMetadata?
    
    private enum CodingKeys: String, CodingKey {
        case metadata = "data"
    }
    
}
