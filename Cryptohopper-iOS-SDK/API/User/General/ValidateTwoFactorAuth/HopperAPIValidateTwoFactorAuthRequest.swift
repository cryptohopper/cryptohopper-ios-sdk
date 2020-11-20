//
//  HopperAPIValidateTwoFactorAuthRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIValidateTwoFactorAuthRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(code : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/validatetwofactor")
        addQueryItem(name: "code", value: code)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
