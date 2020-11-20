//
//  HopperAPIGetOneOpenOrderRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

class HopperAPIGetOneOpenOrderRequest: HopperAPIRequest<HopperAPIGetOneOpenOrderResponse> {
    
    convenience init(hopperId : String,orderId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/order/\(orderId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

