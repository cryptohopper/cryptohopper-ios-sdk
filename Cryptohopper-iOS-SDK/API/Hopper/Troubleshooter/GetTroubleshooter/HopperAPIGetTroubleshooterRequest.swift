//
//  HopperAPIGetTroubleshooterRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 23/10/2023.
//

import Foundation

class HopperAPIGetTroubleshooterRequest: HopperAPIRequest<HopperAPITroubleshooterAPIResponse> {
    
    convenience init(hopperId : String , platform : String , lang : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/troubleshooter")
        self.addQueryItem(name: "platform", value: platform)
        self.addQueryItem(name: "lang", value: lang)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
