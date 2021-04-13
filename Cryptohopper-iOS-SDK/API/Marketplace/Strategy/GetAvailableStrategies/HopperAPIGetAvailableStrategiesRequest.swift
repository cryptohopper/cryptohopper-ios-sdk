//
//  HopperAPIGetAvailableStrategiesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetAvailableStrategiesRequest: HopperAPIRequest<HopperAPIGetAvailableStrategiesResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/strategies")
        addQueryItem(name: "available_in_app", value: "1")
        addQueryItem(name: "start", value: "0")
        addQueryItem(name: "limit", value: "500")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
