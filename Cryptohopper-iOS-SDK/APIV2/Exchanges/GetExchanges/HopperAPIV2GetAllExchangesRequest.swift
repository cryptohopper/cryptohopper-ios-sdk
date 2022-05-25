//
//  HopperAPIV2GetAllExchangesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetAllExchangesRequest: HopperAPIRequest<[V2Exchange]?> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/exchange/list",isV2Endpoint: true)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
