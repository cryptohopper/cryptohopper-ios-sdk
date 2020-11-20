//
//  HopperAPIGetExchangeTickerPairRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetExchangeTickerPairRequest: HopperAPIRequest<HopperAPIGetExchangeTickerPairResponse> {
    
    convenience init(exchange : String,pair : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/ticker/\(pair)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
