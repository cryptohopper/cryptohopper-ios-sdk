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
        quoteCurrency = LenientDecoding.string(c, .quoteCurrency)
        currency = LenientDecoding.string(c, .currency)
        exchangeRate = LenientDecoding.string(c, .exchangeRate)
    }
    
}
