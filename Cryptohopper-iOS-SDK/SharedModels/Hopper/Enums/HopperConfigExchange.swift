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
    case cryptocom = "crypto"
    case exmo = "exmo"
    case bitfinex = "bitfinex"
    case kucoin = "kucoin"
    case cexio = "cexio"
    case hitbtc = "hitbtc"
    case huobi = "huobi"
    case bitpanda = "bitpanda"
    case kraken2 = "kraken2"
    case binanceus = "binanceus"
    case bitvavo = "bitvavo"
    case okex = "okex"
    case binanceFutures = "binance_futures"
    
    private enum CodingKeys: String, CodingKey {
        case poloniex = "poloniex"
        case kraken = "kraken"
        case bittrex = "bittrex"
        case gdax = "gdax"
        case binance = "binance"
        case cryptopia = "cryptopia"
        case cryptocom = "crypto"
        case exmo = "exmo"
        case bitfinex = "bitfinex"
        case kucoin = "kucoin"
        case cexio = "cexio"
        case hitbtc = "hitbtc"
        case huobi = "huobi"
        case bitpanda = "bitpanda"
        case kraken2 = "kraken2"
        case binanceus = "binanceus"
        case bitvavo = "bitvavo"
        case okex = "okex"
        case binanceFutures = "binance_futures"
    }
}

