//
//  HopperAPIGetTradingPairOfExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetTradingPairOfExchangeRequest: HopperAPIRequest<HopperAPIGetTradingPairOfExchangeResponse> {
    
    convenience init(exchange : String, currency : String , baseCurrency : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/getmarket")
        addQueryItem(name: "currency", value: currency)
        addQueryItem(name: "base_currency", value: baseCurrency)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
