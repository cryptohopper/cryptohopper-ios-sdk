//
//  HopperAPISocialLoginRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 04/08/2022.
//

import Foundation
import UIKit

class HopperAPISocialLoginRequest: HopperAPIRequest<HopperAPIAuthenticationResponse> {
    
    convenience init(socialType : String , token : String , nonce : String?, userAgent : String, appCheckToken : String?) {
        self.init()
        self.changeUrlPath(path:"/oauth2/social-login")
        self.setIsAuthenticationRequest(isAuthenticationMethod: true)
        addBodyItem(name: "grant_type", value: "social")
        addBodyItem(name: "client_id", value: HopperAPIConfigurationManager.shared.config.clientId!)
        addBodyItem(name: "scope", value: "read,user,notifications,trade,manage")
        addBodyItem(name: "social", value: socialType)
        addBodyItem(name: "token", value: token)
        if(nonce != nil){
            addBodyItem(name: "nonce", value: (nonce ?? ""))
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
