//
//  HopperAPIGetPortfolioBotsRequest.swift
//  Pods
//
//  Created by Can Erten on 09/04/2025.
//

import Foundation

class HopperAPIGetPortfolioBotsRequest: HopperAPIRequest<HopperAPIGetPortfolioBotsResponse> {
    
    convenience init(_ data: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/portfolios")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
}
