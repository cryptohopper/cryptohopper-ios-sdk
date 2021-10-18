//
//  HopperAPIUpdatePushNotificationRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 15/10/2021.
//

import Foundation

class HopperAPIUpdatePushNotificationRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(permissions : [String : String]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/mobilepushnotifications")
        
        var settingsArr = [String:Any]()
        for c in permissions {
            settingsArr[c.key] = c.value
        }
        addBodyItem(name: "settings", value: settingsArr)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
