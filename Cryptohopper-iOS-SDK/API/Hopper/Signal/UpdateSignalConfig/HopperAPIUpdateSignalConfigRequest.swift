//
//  HopperAPIUpdateSignalConfigRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIUpdateSignalConfigRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,signalId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/signal/\(signalId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
