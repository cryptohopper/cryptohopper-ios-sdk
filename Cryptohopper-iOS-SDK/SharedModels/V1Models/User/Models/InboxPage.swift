//
//  InboxPage.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// The `data` of `GET /v1/user/inbox`.
public struct InboxPage: Codable {

    public let threads: [InboxThread]
    /// nil means there are no more pages.
    public let nextCursor: String?
    public let updatesEnabled: Bool
    public let eventsEnabled: Bool

    public init(threads: [InboxThread], nextCursor: String?, updatesEnabled: Bool, eventsEnabled: Bool) {
        self.threads = threads
        self.nextCursor = nextCursor
        self.updatesEnabled = updatesEnabled
        self.eventsEnabled = eventsEnabled
    }

    private enum CodingKeys: String, CodingKey {
        case threads = "threads"
        case nextCursor = "next_cursor"
        case updatesEnabled = "updates_enabled"
        case eventsEnabled = "events_enabled"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        let decodedThreads = try? c.decodeIfPresent([FailableDecodable<InboxThread>].self, forKey: .threads)
        threads = decodedThreads?.compactMap(\.value) ?? []
        nextCursor = InboxLenient.string(c, .nextCursor)
        updatesEnabled = InboxLenient.bool(c, .updatesEnabled) ?? false
        eventsEnabled = InboxLenient.bool(c, .eventsEnabled) ?? false
    }
}
