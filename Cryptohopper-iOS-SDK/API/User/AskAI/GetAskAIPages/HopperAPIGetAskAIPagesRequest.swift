//
//  HopperAPIGetAskAIPagesRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetAskAIPagesRequest: HopperAPIRequest<HopperAPIGetAskAIPagesResponse> {
    
    convenience init(_ data: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askai")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

