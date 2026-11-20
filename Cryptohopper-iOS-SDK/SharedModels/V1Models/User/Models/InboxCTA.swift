//
//  InboxCTA.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// Call-to-action attached to a board/blog inbox thread.
public struct InboxCTA: Codable {

    public let label: String
    public let url: String

    public init(label: String, url: String) {
        self.label = label
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case label = "label"
        case url = "url"
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        label = InboxLenient.string(c, .label) ?? ""
        guard let decodedURL = InboxLenient.string(c, .url), !decodedURL.isEmpty else {
            throw DecodingError.dataCorruptedError(forKey: .url,
                                                   in: c,
                                                   debugDescription: "url must be a non-empty string")
        }
        url = decodedURL
    }
}
