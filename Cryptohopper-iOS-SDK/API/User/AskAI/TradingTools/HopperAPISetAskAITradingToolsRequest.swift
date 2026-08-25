//
//  HopperAPISetAskAITradingToolsRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPISetAskAITradingToolsRequest: HopperAPIRequest<HopperAPIAskAITradingToolsResponse> {

    convenience init(enabled: Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askaitradingtools")
        // The endpoint takes the flag as 0/1, not a JSON bool.
        addBodyItem(name: "enabled", value: enabled ? 1 : 0)
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }

    override var needsAuthentication: Bool {
        return true
    }

}
