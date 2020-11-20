//
//  HopperAPIGetOneSubscriptionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetOneUserSubscriptionRequest: HopperAPIRequest<HopperAPIGetOneUserSubscriptionResponse> {
    
    convenience init(subscriptionId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/subscription/\(subscriptionId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
