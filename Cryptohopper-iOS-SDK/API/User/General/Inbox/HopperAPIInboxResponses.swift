//
//  HopperAPIInboxResponses.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// `{"data": {"threads": [...], "next_cursor": ..., ...}}`
class HopperAPIGetInboxResponse: Codable {

    var page: InboxPage?

    private enum CodingKeys: String, CodingKey {
        case page = "data"
    }

}

/// `{"data": {"unread": Int}}`
class HopperAPIGetInboxUnreadResponse: Codable {

    var unread: InboxUnread?

    private enum CodingKeys: String, CodingKey {
        case unread = "data"
    }

}

/// `{"data": {"all": Bool, "thread_key": String|null}}`
class HopperAPIMarkInboxReadResponse: Codable {

    var result: InboxMarkReadResult?

    private enum CodingKeys: String, CodingKey {
        case result = "data"
    }

}
