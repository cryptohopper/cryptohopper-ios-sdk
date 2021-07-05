//
//  HopperAPIReassignSubsriptionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIReassignSubsriptionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,subscriptionId: String) {
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
