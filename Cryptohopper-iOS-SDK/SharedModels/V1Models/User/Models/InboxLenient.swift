//
//  InboxLenient.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

struct FailableDecodable<Value: Decodable>: Decodable {

    let value: Value?

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        value = try? container.decode(Value.self)
    }
}

/// Lenient decoding helpers for the inbox payloads: the monolith may send
/// Ints and Bools as numbers, 0/1, or numeric strings.
enum InboxLenient {

    static func string<K: CodingKey>(_ c: KeyedDecodingContainer<K>, _ key: K) -> String? {
        if let s = try? c.decodeIfPresent(String.self, forKey: key) { return s }
        if let i = try? c.decodeIfPresent(Int.self, forKey: key) { return String(i) }
        return nil
    }

    static func int<K: CodingKey>(_ c: KeyedDecodingContainer<K>, _ key: K) -> Int? {
        if let i = try? c.decodeIfPresent(Int.self, forKey: key) { return i }
        if let d = try? c.decodeIfPresent(Double.self, forKey: key) {
            return Int(exactly: d.rounded(.towardZero))
        }
        if let s = try? c.decodeIfPresent(String.self, forKey: key) {
            let t = s.trimmingCharacters(in: .whitespaces)
            if let i = Int(t) { return i }
            if let d = Double(t) { return Int(exactly: d.rounded(.towardZero)) }
        }
        if let b = try? c.decodeIfPresent(Bool.self, forKey: key) { return b ? 1 : 0 }
        return nil
    }

    static func bool<K: CodingKey>(_ c: KeyedDecodingContainer<K>, _ key: K) -> Bool? {
        if let b = try? c.decodeIfPresent(Bool.self, forKey: key) { return b }
        if let i = try? c.decodeIfPresent(Int.self, forKey: key) { return i != 0 }
        if let s = try? c.decodeIfPresent(String.self, forKey: key) {
            switch s.trimmingCharacters(in: .whitespaces).lowercased() {
            case "1", "true", "yes": return true
            case "0", "false", "no", "": return false
            default: return nil
            }
        }
        return nil
    }
}
