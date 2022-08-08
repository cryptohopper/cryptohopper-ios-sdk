//
//  HopperAPIDeleteUserRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 08/08/2022.
//

import Foundation

class HopperAPIDeleteUserRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
