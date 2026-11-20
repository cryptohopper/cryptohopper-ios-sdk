//
//  HopperAPIGetInboxUnreadRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetInboxUnreadRequest: HopperAPIRequest<HopperAPIGetInboxUnreadResponse> {

    convenience init(_ data: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/inboxunread")
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }

    override var needsAuthentication: Bool {
        return true
    }

}
