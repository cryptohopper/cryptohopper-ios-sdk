//
//  ExchangeForexRates.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

/// One row of `GET /v1/exchange/forex-rates`.
/// PHP: `SELECT base_currency as quote_currency, currency, exchange_rate FROM cryptohopper_rates`.
public class ExchangeForexRates : Codable {
    
    /// The rate's base currency (the PHP aliases the `base_currency` column as `quote_currency`).
    public private(set) var quoteCurrency : String?
    public private(set) var currency : String?
    /// Raw value as sent by the API (a decimal string, or a number).
    public private(set) var exchangeRate : String?
    
    /// Same as `quoteCurrency`.
    public var baseCurrency : String? { return quoteCurrency }
    /// `exchangeRate` parsed as a Double.
    public var exchangeRateValue : Double? {
        guard let exchangeRate = exchangeRate else { return nil }
        return Double(exchangeRate)
    }
    
    private enum CodingKeys: String, CodingKey {
        case quoteCurrency = "quote_currency"
        case currency = "currency"
        case exchangeRate = "exchange_rate"
    }
    
    public required init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        quoteCurrency = ExchangeForexRates.string(c, .quoteCurrency)
        currency = ExchangeForexRates.string(c, .currency)
        exchangeRate = ExchangeForexRates.string(c, .exchangeRate)
    }
    
    /// Decodes a String, Double or Int into a String; nil if absent or null.
    private static func string(_ c: KeyedDecodingContainer<CodingKeys>, _ key: CodingKeys) -> String? {
        if let s = try? c.decodeIfPresent(String.self, forKey: key) { return s }
        if let i = try? c.decodeIfPresent(Int.self, forKey: key) { return String(i) }
        if let d = try? c.decodeIfPresent(Double.self, forKey: key) { return String(d) }
        return nil
    }
    
}
