//
//  HopperAPIGetPortalExchangePairMaps.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 25/10/2023.
//

import Foundation

class HopperAPIGetPortalExchangePairMapsRequest: HopperAPIRequest<HopperAPIGetPortalExchangePairMapsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/portal/map")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
