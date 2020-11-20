//
//  HopperAPIGetAllSubscriptionPlansResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetAllSubscriptionPlansResponse: Codable {
    
    var data : [SubscriptionPlan]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
