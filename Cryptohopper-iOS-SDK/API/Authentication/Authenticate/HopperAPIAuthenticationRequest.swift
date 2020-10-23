//
//  HopperAPILoginRequest.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPIAuthenticationRequest: HopperAPIRequest<HopperAPIAuthenticationResponse> {
    
    convenience init(username : String , password : String) {
        self.init()
        addBodyItem(name: "grant_type", value: "password")
        addBodyItem(name: "client_id", value: HopperAPIConfigurationManager.shared.config.clientId!)
        addBodyItem(name: "username", value: username)
        addBodyItem(name: "password", value: password)
        addBodyItem(name: "scope", value: "read,user,notifications,trade,manage")
        addBodyItem(name: "version", value: "1.0")
        addBodyItem(name: "platform", value: "iOS")
    }
    
    override var path: String {
        return "/oauth2/token"
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
}
