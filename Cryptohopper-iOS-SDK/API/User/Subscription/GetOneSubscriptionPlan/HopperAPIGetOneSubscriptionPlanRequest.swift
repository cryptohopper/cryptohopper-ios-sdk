//
//  HopperAPIGetOneSubscriptionPlanRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation


class HopperAPIGetOneSubscriptionPlanRequest: HopperAPIRequest<HopperAPIGetOneSubscriptionPlanResponse> {
    
    convenience init(planId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/subscription/plans/\(planId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
