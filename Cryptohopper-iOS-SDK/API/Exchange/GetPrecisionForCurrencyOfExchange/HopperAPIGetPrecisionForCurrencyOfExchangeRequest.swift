//
//  HopperAPIGetPrecisionForCurrencyOfExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPrecisionForCurrencyOfExchangeRequest: HopperAPIRequest<HopperAPIGetPrecisionForCurrencyOfExchangeResponse> {
    
    convenience init(exchange : String, currency : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/currency/\(currency)/decimals")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
