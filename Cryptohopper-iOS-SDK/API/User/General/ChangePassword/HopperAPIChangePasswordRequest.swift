//
//  HopperAPIChangePasswordRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIChangePasswordRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(password : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/password")
        addBodyItem(name: "password", value: password)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
