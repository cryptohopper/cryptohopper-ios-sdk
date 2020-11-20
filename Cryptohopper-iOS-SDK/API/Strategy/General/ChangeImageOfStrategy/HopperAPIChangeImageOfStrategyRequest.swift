//
//  HopperAPIChangeImageOfStrategyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIChangeImageOfStrategyRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(strategyId : Int,image: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/strategy/\(strategyId)")
        addBodyItem(name: "image", value: image)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
