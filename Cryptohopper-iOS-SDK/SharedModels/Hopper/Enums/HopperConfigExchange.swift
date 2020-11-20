//
//  HopperConfigExchange.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public enum HopperConfigExchange : String,Codable {
    
    case poloniex = "poloniex"
    case kraken = "kraken"
    case bittrex = "bittrex"
    case gdax = "gdax"
    case binance = "binance"
    case cryptopia = "cryptopia"
    case bitfinex = "bitfinex"
    case kucoin = "kucoin"
    case cexio = "cexio"
    case hitbtc = "hitbtc"
    
    private enum CodingKeys: String, CodingKey {
        case poloniex = "poloniex"
        case kraken = "kraken"
        case bittrex = "bittrex"
        case gdax = "gdax"
        case binance = "binance"
        case cryptopia = "cryptopia"
        case bitfinex = "bitfinex"
        case kucoin = "kucoin"
        case cexio = "cexio"
        case hitbtc = "hitbtc"
    }
}
