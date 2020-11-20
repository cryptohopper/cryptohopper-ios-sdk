//
//  HopperAPIGetOneSubscriptionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetOneUserSubscriptionResponse: Codable {
    
    var data : UserSubscription?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
