//
//  HopperAPIGetPortalExchangeKeyMaps.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 25/10/2023.
//

import Foundation

class HopperAPIGetPortalExchangeKeyMapsRequest: HopperAPIRequest<HopperAPIGetPortalExchangeKeyMapsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/portal")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
