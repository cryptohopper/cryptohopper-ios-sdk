//
//  HopperAPIUpdateGetMobileNotificationRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 15/10/2021.
//

import Foundation

class HopperAPIUpdateGetMobileNotificationRequest: HopperAPIRequest<HopperAPIUpdateGetMobileNotificationResponse> {
    
    convenience init(data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/mobilepushnotifications")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
