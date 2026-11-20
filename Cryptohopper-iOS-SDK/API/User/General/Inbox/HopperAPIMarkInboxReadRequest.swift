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
    convenience init(all: Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/inboxmarkread")
        addBodyItem(name: "all", value: all ? 1 : 0)
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }

    override var needsAuthentication: Bool {
        return true
    }

}
