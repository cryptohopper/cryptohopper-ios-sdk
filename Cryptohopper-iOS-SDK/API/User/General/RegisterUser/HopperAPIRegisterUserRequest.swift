//
//  HopperAPIRegisterUserRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIRegisterUserRequest: HopperAPIRequest<HopperAPIRegisterUserResponse> {
    
    convenience init(
        name: String,
        email: String,
        username: String,
        subscribe_newsletter: Bool,
        password: String,
        userAgent: String,
        appCheckToken: String?,
        deviceName: String?
    ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/register")
        addHeader(name: "name", value: name)
        addHeader(name: "email", value: email)
        addHeader(name: "username", value: username)
        addHeader(name: "subscribe", value: subscribe_newsletter.description)
        addHeader(name: "password", value: password)
        addHeader(name: "User-Agent", value: userAgent)
        
        if let appCheckToken = appCheckToken {
            addHeader(name: "X-Firebase-AppCheck", value: appCheckToken)
        }
        
        if let deviceName = deviceName {
            // Match Android: send deviceName as a header for register
            addHeader(name: "deviceName", value: deviceName)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
}
