//
//  InboxThread.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// One thread of `GET /v1/user/inbox`.
/// `source` is "board", "blog" or "event". The event-only fields are nil for
/// the other sources.
public struct InboxThread: Codable {

    /// The thread id.
    public let threadKey: String
    public let source: String
    public let title: String
    public let snippet: String
    public let body: String
    public let cta: InboxCTA?
    /// Unix seconds, may be 0.
    public let created: Int
    public let unread: Bool
    public let muted: Bool

    // Event threads only.
    /// "orders" or "bots".
    public let typeHint: String?
    /// "info", "success" or "action-required"; kept raw so unknown values survive.
    public let status: String?
    public let attention: Bool?
    public let timeline: [InboxTimelineEntry]?
    public let hopperId: Int?
    public let episodeId: Int?
    public let episodeOpened: Int?

    public init(threadKey: String,
                source: String,
                title: String,
                snippet: String,
                body: String,
                cta: InboxCTA? = nil,
                created: Int,
                unread: Bool,
                muted: Bool,
                typeHint: String? = nil,
                status: String? = nil,
                attention: Bool? = nil,
                timeline: [InboxTimelineEntry]? = nil,
                hopperId: Int? = nil,
                episodeId: Int? = nil,
                episodeOpened: Int? = nil) {
        self.threadKey = threadKey
        self.source = source
        self.title = title
        self.snippet = snippet
        self.body = body
        self.cta = cta
        self.created = created
        self.unread = unread
        self.muted = muted
        self.typeHint = typeHint
        self.status = status
        self.attention = attention
        self.timeline = timeline
        self.hopperId = hopperId
        self.episodeId = episodeId
        self.episodeOpened = episodeOpened
    }

    private enum CodingKeys: String, CodingKey {
        case threadKey = "thread_key"
        case source = "source"
        case title = "title"
        case snippet = "snippet"
        case body = "body"
        case cta = "cta"
        case created = "created"
        case unread = "unread"
        case muted = "muted"
        case typeHint = "type_hint"
        case status = "status"
        case attention = "attention"
        case timeline = "timeline"
        case hopperId = "hopper_id"
        case episodeId = "episode_id"
        case episodeOpened = "episode_opened"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        threadKey = InboxLenient.string(c, .threadKey) ?? ""
        source = InboxLenient.string(c, .source) ?? ""
        title = InboxLenient.string(c, .title) ?? ""
        snippet = InboxLenient.string(c, .snippet) ?? ""
        body = InboxLenient.string(c, .body) ?? ""
        cta = try? c.decodeIfPresent(InboxCTA.self, forKey: .cta)
        created = InboxLenient.int(c, .created) ?? 0
        unread = InboxLenient.bool(c, .unread) ?? false
        muted = InboxLenient.bool(c, .muted) ?? false
        typeHint = InboxLenient.string(c, .typeHint)
        status = InboxLenient.string(c, .status)
        attention = InboxLenient.bool(c, .attention)
        timeline = try? c.decodeIfPresent([InboxTimelineEntry].self, forKey: .timeline)
        hopperId = InboxLenient.int(c, .hopperId)
        episodeId = InboxLenient.int(c, .episodeId)
        episodeOpened = InboxLenient.int(c, .episodeOpened)
    }
}
