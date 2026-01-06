//
//  HopperAPINewAskAISessionRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPINewAskAISessionRequest: HopperAPIRequest<HopperAPINewAskAISessionResponse> {
    
    convenience init(page: String, newSession: Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askai/new")
        addBodyItem(name: "page", value: page)
        addBodyItem(name: "new_session", value: newSession ? 1 : 0)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

