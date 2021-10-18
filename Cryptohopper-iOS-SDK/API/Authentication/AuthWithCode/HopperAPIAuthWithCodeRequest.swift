//
//  HopperAPIAuthWithCodeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 14/10/2021.
//

import Foundation
import UIKit

class HopperAPIAuthWithCodeRequest: HopperAPIRequest<HopperAPIAuthenticationResponse> {
    
    convenience init(code : String , userAgent : String) {
        self.init()
        self.changeUrlPath(path:"/oauth2/token")
        self.setIsAuthenticationRequest(isAuthenticationMethod: true)
        addBodyItem(name: "grant_type", value: "authorization_code")
        addBodyItem(name: "client_id", value: HopperAPIConfigurationManager.shared.config.clientId!)
        addBodyItem(name: "client_secret", value: HopperAPIConfigurationManager.shared.config.clientSecret!)
        addBodyItem(name: "scope", value: "read,user,notifications,trade,manage")
        addBodyItem(name: "code", value: code)
        addHeader(name: "User-Agent", value: userAgent)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
