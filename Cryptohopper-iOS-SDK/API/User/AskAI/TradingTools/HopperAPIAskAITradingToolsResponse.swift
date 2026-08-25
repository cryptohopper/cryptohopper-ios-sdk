//
//  HopperAPIAskAITradingToolsResponse.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

/// Response for both the GET and the POST of /v1/user/askaitradingtools:
/// they return the same payload, `{"ask_ai_trading_tools": 0|1}`, so the
/// resulting state is read the same way after a fetch and after a write.
class HopperAPIAskAITradingToolsResponse: Codable {

    var enabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case enabled = "ask_ai_trading_tools"
    }

    /// Kept out of `CodingKeys` so the synthesized `Encodable` stays valid:
    /// a key with no matching stored property breaks the synthesis.
    private enum WrapperKeys: String, CodingKey {
        case data = "data"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let value = HopperAPIAskAITradingToolsResponse.flag(in: container) {
            enabled = value
        } else if let wrapper = try? decoder.container(keyedBy: WrapperKeys.self),
                  let nested = try? wrapper.nestedContainer(keyedBy: CodingKeys.self, forKey: .data) {
            // Tolerate the `data`-wrapped shape the rest of the API uses.
            enabled = HopperAPIAskAITradingToolsResponse.flag(in: nested)
        }
    }

    /// The flag comes back as 0/1 from the monolith, but a JSON bool or a
    /// numeric string are both plausible shapes for the same setting.
    private static func flag(in container: KeyedDecodingContainer<CodingKeys>) -> Bool? {
        if let intValue = try? container.decodeIfPresent(Int.self, forKey: .enabled) {
            return intValue != 0
        }
        if let boolValue = try? container.decodeIfPresent(Bool.self, forKey: .enabled) {
            return boolValue
        }
        if let stringValue = try? container.decodeIfPresent(String.self, forKey: .enabled) {
            return (stringValue as NSString).boolValue
        }
        return nil
    }

}
