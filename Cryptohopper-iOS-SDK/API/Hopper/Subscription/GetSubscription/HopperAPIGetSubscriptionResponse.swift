//
//  HopperAPIGetSubscriptionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation

class HopperAPIGetSubscriptionResponse: Codable {
    
    var data : HopperAPIGetSubscriptionData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetSubscriptionData : Codable {
    
    var subscription: HopperSubscription?
    
    private enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
    
}
