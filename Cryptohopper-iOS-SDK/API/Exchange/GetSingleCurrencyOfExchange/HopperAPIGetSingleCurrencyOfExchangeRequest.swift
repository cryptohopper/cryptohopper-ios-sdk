//
//  HopperAPIGetSingleCurrencyOfExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetSingleCurrencyOfExchangeRequest: HopperAPIRequest<HopperAPIGetSingleCurrencyOfExchangeResponse> {
    
    convenience init(exchange : String,coin : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/currency")
        addQueryItem(name: "coin", value: coin)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
