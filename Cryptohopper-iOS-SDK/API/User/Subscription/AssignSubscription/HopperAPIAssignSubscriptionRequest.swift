//
//  HopperAPIAssignSubscriptionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIAssignSubscriptionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId: Int,subscriptionId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/subscription/assign")
        addBodyItem(name: "hopper_id", value: hopperId)
        addBodyItem(name: "subscription_id", value: subscriptionId)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
