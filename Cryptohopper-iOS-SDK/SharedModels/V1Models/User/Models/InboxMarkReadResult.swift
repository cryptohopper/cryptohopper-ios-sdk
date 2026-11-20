//
//  InboxMarkReadResult.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// The `data` of `POST /v1/user/inboxmarkread`.
public struct InboxMarkReadResult: Codable {

    public let all: Bool
    public let threadKey: String?

    public init(all: Bool, threadKey: String?) {
        self.all = all
        self.threadKey = threadKey
    }

    private enum CodingKeys: String, CodingKey {
        case all = "all"
        case threadKey = "thread_key"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        all = InboxLenient.bool(c, .all) ?? false
        threadKey = InboxLenient.string(c, .threadKey)
    }
}
