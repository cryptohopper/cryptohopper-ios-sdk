//
//  HopperAPIGetPairOrderBookOfExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPairOrderBookOfExchangeRequest: HopperAPIRequest<HopperAPIGetPairOrderBookOfExchangeResponse> {
    
    convenience init(exchange : String,pair : String,depth : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/\(pair)/orderbook/\(depth)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
