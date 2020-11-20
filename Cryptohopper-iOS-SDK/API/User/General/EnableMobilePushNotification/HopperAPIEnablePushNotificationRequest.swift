//
//  HopperAPIEnablePushNotificationRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIEnablePushNotificationRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(enableAll : Bool = false, permissions : [PushNotificationPermissions] = []) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user")
        if(!enableAll){
            let values: [String] = permissions.map { $0.rawValue }
            let permissionsStr = values.joined(separator: ",")
            addBodyItem(name: "permissions", value: permissionsStr)
        }
        
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
