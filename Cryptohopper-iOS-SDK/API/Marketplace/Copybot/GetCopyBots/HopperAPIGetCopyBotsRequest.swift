//
//  HopperAPIGetCopyBotsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 26/01/2023.
//

import Foundation

class HopperAPIGetCopyBotsRequest: HopperAPIRequest<HopperAPIGetCopyBotsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/copybots")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

