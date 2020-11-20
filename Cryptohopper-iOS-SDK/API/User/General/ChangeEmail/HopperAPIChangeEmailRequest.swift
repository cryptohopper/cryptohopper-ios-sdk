//
//  HopperAPIChangeEmailRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIChangeEmailRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(email : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user")
        addBodyItem(name: "email", value: email)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
