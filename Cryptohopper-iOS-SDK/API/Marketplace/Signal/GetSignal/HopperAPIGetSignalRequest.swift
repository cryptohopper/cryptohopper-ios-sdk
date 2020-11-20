//
//  HopperAPIGetSignalRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetSignalRequest: HopperAPIRequest<HopperAPIGetSignalResponse> {
    
    convenience init(signalId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/signals/\(signalId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
