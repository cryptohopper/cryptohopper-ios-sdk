//
//  HopperAPIGetPriceAndAmountOfExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPriceAndAmountOfExchangeRequest: HopperAPIRequest<HopperAPIGetPriceAndAmountOfExchangeResponse> {
    
    convenience init(exchange : String,market : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/markets/\(market)/decimals")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
