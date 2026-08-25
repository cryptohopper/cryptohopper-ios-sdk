//
//  HopperAPIGetAskAITradingToolsRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetAskAITradingToolsRequest: HopperAPIRequest<HopperAPIAskAITradingToolsResponse> {

    convenience init(_ data: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askaitradingtools")
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }

    override var needsAuthentication: Bool {
        return true
    }

}
