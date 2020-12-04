//
//  HopperAPIForgetPasswordRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

class HopperAPIForgetPasswordRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(email : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/resetpassword")
        addBodyItem(name: "email", value: email)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
