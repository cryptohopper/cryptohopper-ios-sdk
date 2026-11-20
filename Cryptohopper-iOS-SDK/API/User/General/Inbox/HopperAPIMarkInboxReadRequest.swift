//
//  HopperAPIMarkInboxReadRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIMarkInboxReadRequest: HopperAPIRequest<HopperAPIMarkInboxReadResponse> {

    /// Marks one thread read.
    convenience init(threadKey: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/inboxmarkread")
        addBodyItem(name: "thread_key", value: threadKey)
    }

    /// Marks the whole inbox read. The endpoint takes the flag as 1, not a JSON bool.
    static func markAll() -> HopperAPIMarkInboxReadRequest {
        let request = HopperAPIMarkInboxReadRequest()
        request.changeUrlPath(path: "/v1" + "/user/inboxmarkread")
        request.addBodyItem(name: "all", value: 1)
        return request
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }

    override var needsAuthentication: Bool {
        return true
    }

}
