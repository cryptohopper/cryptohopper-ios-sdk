//
//  HopperAPIGetBaseCurrenciesFromExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetBaseCurrenciesFromExchangeRequest: HopperAPIRequest<HopperAPIGetBaseCurrenciesFromExchangeResponse> {
    
    convenience init(exchange : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/basecurrencies")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
