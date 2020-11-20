//
//  HopperAPIRefreshTokenRequest.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 22/10/2020.
//

import Foundation
import UIKit

class HopperAPIRefreshTokenRequest: HopperAPIRequest<HopperAPIAuthenticationResponse> {
    
    convenience init(refreshToken:String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/oauth2/refreshToken")
        addBodyItem(name: "refreshToken", value: refreshToken)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
