//
//  InboxUnread.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// The `data` of `GET /v1/user/inboxunread`.
public struct InboxUnread: Codable {

    public let unread: Int

    public init(unread: Int) {
        self.unread = unread
    }

    private enum CodingKeys: String, CodingKey {
        case unread = "unread"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        unread = InboxLenient.int(c, .unread) ?? 0
    }
}
