//
//  HopperAPIGetStrategyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetStrategyRequest: HopperAPIRequest<HopperAPIGetStrategyResponse> {
    
    convenience init(strategyId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/strategies/\(strategyId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
