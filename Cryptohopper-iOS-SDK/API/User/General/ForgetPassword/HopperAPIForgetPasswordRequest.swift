//
//  HopperAPIForgetPasswordRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

class HopperAPIForgetPasswordRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(email : String,userAgent: String,appCheckToken: String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/resetpassword")
        addBodyItem(name: "email", value: email)
        addHeader(name: "User-Agent", value: userAgent)
        
        if(appCheckToken != nil){
            addHeader(name: "X-Firebase-AppCheck", value: (appCheckToken ?? "") )
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return false
    }
    
}
