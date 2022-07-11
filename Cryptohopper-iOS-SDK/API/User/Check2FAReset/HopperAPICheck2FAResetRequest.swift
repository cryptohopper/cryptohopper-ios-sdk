//
//  HopperAPICheck2FAResetRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 16/06/2022.
//

import Foundation

class HopperAPICheck2FAResetRequest: HopperAPIRequest<HopperAPICheck2FAResetResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/require2fareset")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
