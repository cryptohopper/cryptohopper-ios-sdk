//
//  HopperAPIGetAIsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/12/2021.
//

import Foundation

class HopperAPIGetAIsRequest: HopperAPIRequest<HopperAPIGetAIsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/ai")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
