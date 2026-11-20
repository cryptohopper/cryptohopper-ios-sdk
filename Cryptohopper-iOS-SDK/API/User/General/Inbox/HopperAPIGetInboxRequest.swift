//
//  HopperAPIGetInboxRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetInboxRequest: HopperAPIRequest<HopperAPIGetInboxResponse> {

    convenience init(cursor: String?, limit: Int, lang: String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/inbox")
        if let cursor = cursor, !cursor.isEmpty {
            addQueryItem(name: "cursor", value: cursor)
        }
        addQueryItem(name: "limit", value: String(min(max(limit, 1), 50)))
        if let lang = lang, !lang.isEmpty {
            addQueryItem(name: "lang", value: lang)
        }
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }

    override var needsAuthentication: Bool {
        return true
    }

}
