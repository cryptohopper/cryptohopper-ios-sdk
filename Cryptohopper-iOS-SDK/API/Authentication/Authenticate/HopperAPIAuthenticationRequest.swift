//
//  HopperAPILoginRequest.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPIAuthenticationRequest: HopperAPIRequest<HopperAPIAuthenticationResponse> {
    
    convenience init(username : String , password : String , verificationCode : String?, userAgent : String, appCheckToken: String?) {
        self.init()
        self.changeUrlPath(path:"/oauth2/token")
        self.setIsAuthenticationRequest(isAuthenticationMethod: true)
        addBodyItem(name: "grant_type", value: "password")
        addBodyItem(name: "client_id", value: HopperAPIConfigurationManager.shared.config.clientId!)
        addBodyItem(name: "username", value: username)
        addBodyItem(name: "password", value: password)
        addBodyItem(name: "scope", value: "read,user,notifications,trade,manage")
        addBodyItem(name: "version", value: "2.0")
        addBodyItem(name: "platform", value: "iOS")
        if(verificationCode != nil){
            addBodyItem(name: "verification_code", value: (verificationCode ?? ""))
        }
        
        if(appCheckToken != nil){
            addHeader(name: "X-Firebase-AppCheck", value: (appCheckToken ?? "") )
        }
        
        addHeader(name: "User-Agent", value: userAgent)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
