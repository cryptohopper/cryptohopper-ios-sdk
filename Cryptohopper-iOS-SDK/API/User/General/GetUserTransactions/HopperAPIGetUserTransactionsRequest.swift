//
//  HopperAPIGetUserTransactionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserTransactionsRequest: HopperAPIRequest<HopperAPIGetUserTransactionsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/transactions")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
