//
//  HopperAPIGetExchangeWhitelistIPRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 03/01/2023.
//

import Foundation

class HopperAPIGetExchangeWhitelistIPRequest: HopperAPIRequest<HopperAPIGetExchangeWhitelistIPResponse> {
    
    convenience init(exchange : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/ipwhitelist")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
