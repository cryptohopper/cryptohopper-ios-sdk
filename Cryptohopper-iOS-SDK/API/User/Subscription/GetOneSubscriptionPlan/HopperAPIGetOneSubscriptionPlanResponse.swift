//
//  HopperAPIGetOneSubscriptionPlanResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetOneSubscriptionPlanResponse: Codable {
    
    var data : SubscriptionPlan?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
