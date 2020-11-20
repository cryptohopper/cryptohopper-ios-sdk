//
//  HopperAPIGetSignalByIdRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetSignalByIdRequest: HopperAPIRequest<HopperAPIGetSignalByIdResponse> {
    
    convenience init(hopperId : String,signalId: Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/signal")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
