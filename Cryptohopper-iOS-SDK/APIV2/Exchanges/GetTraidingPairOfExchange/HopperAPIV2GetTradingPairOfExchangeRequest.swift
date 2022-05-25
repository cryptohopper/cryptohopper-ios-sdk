//
//  HopperAPIV2GetAllExchangesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetTradingPairOfExchangeRequest: HopperAPIRequest<[V2Pair]?> {
    
    convenience init(exchangeId : Int) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/exchange/\(exchangeId)/markets",isV2Endpoint: true)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
