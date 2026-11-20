//
//  HopperAPIGetInboxRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIGetInboxRequest: HopperAPIRequest<HopperAPIGetInboxResponse> {

    private var queryPairs: [(String, String)] = []

    convenience init(cursor: String?, limit: Int, lang: String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/inbox")
        if let cursor = cursor, !cursor.isEmpty {
            queryPairs.append(("cursor", cursor))
        }
        queryPairs.append(("limit", String(min(max(limit, 1), 50))))
        if let lang = lang, !lang.isEmpty {
            queryPairs.append(("lang", lang))
        }
    }

    /// The cursor is opaque and may contain `=`, `/` and `+`. URLComponents
    /// leaves `+` (and `=`) unescaped in query values, and PHP would read a
    /// `+` as a space, so the query is encoded here against a strict set.
    override var url: URL? {
        guard let base = super.url,
              var components = URLComponents(url: base, resolvingAgainstBaseURL: false) else {
            return nil
        }
        var allowed = CharacterSet.alphanumerics
        allowed.insert(charactersIn: "-._~")
        components.percentEncodedQuery = queryPairs.map { pair in
            let name = pair.0.addingPercentEncoding(withAllowedCharacters: allowed) ?? pair.0
            let value = pair.1.addingPercentEncoding(withAllowedCharacters: allowed) ?? pair.1
            return name + "=" + value
        }.joined(separator: "&")
        return components.url
    }

    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }

    override var needsAuthentication: Bool {
        return true
    }

}
