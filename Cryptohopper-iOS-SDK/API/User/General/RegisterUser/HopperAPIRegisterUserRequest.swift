//
//  HopperAPIRegisterUserRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIRegisterUserRequest: HopperAPIRequest<HopperAPIRegisterUserResponse> {
    
    convenience init(name : String,email : String,username : String,subscribe_newsletter : Bool,password : String,userAgent: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/register")
        addHeader(name: "name", value: name)
        addHeader(name: "email", value: email)
        addHeader(name: "username", value: username)
        addHeader(name: "subscribe_newsletter", value: subscribe_newsletter.description)
        addHeader(name: "password", value: password)
        
        addHeader(name: "User-Agent", value: userAgent)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
