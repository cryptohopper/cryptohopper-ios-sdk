//
//  HopperAPIGetStrategyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetStrategyByIdRequest: HopperAPIRequest<HopperAPIGetStrategyByIdResponse> {
    
    convenience init(strategyId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/strategy/\(strategyId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
