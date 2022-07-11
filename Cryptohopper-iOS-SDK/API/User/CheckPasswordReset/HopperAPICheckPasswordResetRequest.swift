//
//  HopperAPICheckPasswordResetRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 16/06/2022.
//

import Foundation

class HopperAPICheckPasswordResetRequest: HopperAPIRequest<HopperAPICheckPasswordResetResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/requirepasswordreset")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
