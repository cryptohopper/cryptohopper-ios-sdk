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
        addBodyItem(name: "refreshToken", value: refreshToken)
    }
    
    override var path: String {
        return "/oauth2/refreshToken"
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
