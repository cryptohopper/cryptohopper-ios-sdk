//
//  HopperAPIGetHomePageRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetHomePageRequest: HopperAPIRequest<HopperAPIGetHomePageResponse> {
    
    convenience init(_ homepage: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/homepage")
        self.addQueryItem(name: "in_app", value: "1")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
