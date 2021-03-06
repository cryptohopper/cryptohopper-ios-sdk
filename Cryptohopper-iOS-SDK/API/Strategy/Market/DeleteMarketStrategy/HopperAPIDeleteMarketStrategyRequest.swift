//
//  HopperAPIDeleteMarketStrategyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIDeleteMarketStrategyRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(strategyId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/strategy/market/\(strategyId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
