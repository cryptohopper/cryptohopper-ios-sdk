//
//  HopperAPIGetAvailableSignalsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetAvailableSignalsRequest: HopperAPIRequest<HopperAPIGetAvailableSignalsResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/signals")
        addQueryItem(name: "available_in_app", value: "1")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
