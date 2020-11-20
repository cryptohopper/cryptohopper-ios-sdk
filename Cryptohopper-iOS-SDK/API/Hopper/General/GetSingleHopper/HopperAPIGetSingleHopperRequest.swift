//
//  HopperAPIGetSingleHoperRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

class HopperAPIGetSingleHopperRequest: HopperAPIRequest<HopperAPIGetSingleHopperResponse> {
    
    convenience init(hopperId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
