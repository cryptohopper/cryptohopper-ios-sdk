//
//  HopperAPIResendActivationEmailRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIResendActivationEmailRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(email : String,username : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/resendactivation")
        addHeader(name: "email", value: email)
        addHeader(name: "username", value: username)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
