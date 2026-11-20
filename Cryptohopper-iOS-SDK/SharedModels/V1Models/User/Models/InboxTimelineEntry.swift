//
//  InboxTimelineEntry.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// One line of an event thread's timeline (max 20 per thread).
public struct InboxTimelineEntry: Codable {

    public let id: Int
    public let text: String
    /// Unix seconds, may be 0.
    public let created: Int

    public init(id: Int, text: String, created: Int) {
        self.id = id
        self.text = text
        self.created = created
    }

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case text = "text"
        case created = "created"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        id = InboxLenient.int(c, .id) ?? 0
        text = InboxLenient.string(c, .text) ?? ""
        created = InboxLenient.int(c, .created) ?? 0
    }
}
