//
//  CryptohopperExchange.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperExchange: NSObject {

    // ------------- GENERAL ----------------------------------------
    
    /*!
    * @discussion Get Exchanges
    */
    public static func getExchanges(completion: @escaping (Result<[Exchange]?, Error>) -> Void) {
        HopperAPIGetExchangeRequest.init("").request { (data) in
            completion(.success(data.exchanges))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Exchanges with Details
    */
    public static func getExchangeDetails(completion: @escaping (Result<[Exchange]?, Error>) -> Void) {
        HopperAPIGetExchangeDetailsRequest.init("").request { (data) in
            completion(.success(data.exchanges))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Exchanges IP Whitelist
    */
    public static func getExchangeWhitelistIps(exchangeKey : String,completion: @escaping (Result<CHIPWhitelist?, Error>) -> Void) {
        HopperAPIGetExchangeWhitelistIPRequest.init(exchange: exchangeKey).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Exchange Forex Rates
    */
    public static func getExchangeForexRates(completion: @escaping (Result<[ExchangeForexRates]?, Error>) -> Void) {
        HopperAPIGetExchangeForexRatesRequest.init("").request { (data) in
            completion(.success(data.forexRates))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Base Currencies From Exchange
    *
    * @param exchange: (required) exchange
    */
    public static func getBaseCurrenciesFromExchange(exchange : String,completion: @escaping (Result<[String : [String:String]]?, Error>) -> Void) {
        HopperAPIGetBaseCurrenciesFromExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.baseCurrencies))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Base Currency From Exchange
    *
    * @param exchange: (required) exchange
    * @param currency: (required) currency
    */
    public static func getBaseCurrencyFromExchange(exchange : String,currency : String,completion: @escaping (Result<[String:String]?, Error>) -> Void) {
        HopperAPIGetBaseCurrencyFromExchangeRequest.init(exchange: exchange, currency: currency).request { (data) in
            completion(.success(data.baseCurrency))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /*!
    * @discussion Get Candles From Exchange
    *
    * @param exchange: (required) exchange
    * @param pair: (required) pair
    * @param timeFrame: (required) time frame
    * @param startDate: (required) start date
    * @param endDate: (required) end date
    */
    public static func getCandlesFromExchange(exchange : String,pair : String,timeFrame : CandleTimeFrame , startDate : Date , endDate : Date,completion: @escaping (Result<[Candle]?, Error>) -> Void) {
        HopperAPIGetCandlesFromExchangeRequest.init(exchange: exchange, pair: pair, timeFrame: timeFrame, startDate: startDate, endDate: endDate).request { (data) in
            completion(.success(data.candles))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /*!
    * @discussion Get Available Currencies For Exchange
    *
    * @param exchange: (required) exchange
    */
    public static func getAvailableCurrenciesForExchange(exchange : String,completion: @escaping (Result<[String:ExchangeCurrencyDetail]?, Error>) -> Void) {
        HopperAPIGetAvailableCurrenciesOfExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.currencies))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Precision For Currencies Of Exchange
    *
    * @param exchange: (required) exchange
    */
    public static func getPrecisionForCurrenciesOfExchange(exchange : String,completion: @escaping (Result<[String:String]?, Error>) -> Void) {
        HopperAPIGetPrecisionForCurrenciesOfExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.precisions))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Single Currency Of Exchange
    *
    * @param exchange: (required) exchange
    * @param coin: (required) exchange
    */
    public static func getSingleCurrencyOfExchange(exchange : String,coin : String,completion: @escaping (Result<ExchangeCurrencyDetail?, Error>) -> Void) {
        HopperAPIGetSingleCurrencyOfExchangeRequest.init(exchange: exchange, coin: coin).request { (data) in
            completion(.success(data.detail))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Precision For Currency Of Exchange
    *
    * @param exchange: (required) exchange
    * @param currency: (required) currency
    */
    public static func getPrecisionForCurrencyOfExchange(exchange : String,currency: String,completion: @escaping (Result<[String:Int]?, Error>) -> Void) {
        HopperAPIGetPrecisionForCurrencyOfExchangeRequest.init(exchange: exchange, currency: currency).request { (data) in
            completion(.success(data.precision))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /*!
    * @discussion Get Trading Pair Of Exchange
    *
    * @param exchange: (required) exchange
    * @param currency: (required) currency
    * @param baseCurrency: (required) baseCurrency
    */
    public static func getTradingPairOfExchange(exchange : String,currency : String,baseCurrency : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIGetTradingPairOfExchangeRequest.init(exchange: exchange, currency: currency, baseCurrency: baseCurrency).request { (data) in
            completion(.success(data.pairCode))
        } _: { (err) in
            completion(.failure(err))
        }
    }

    /*!
    * @discussion Get Markets Of Exchange
    *
    * @param exchange: (required) exchange
    */
    public static func getMarketsOfExchange(exchange : String,completion: @escaping (Result<[String]?, Error>) -> Void) {
        HopperAPIGetMarketsOfExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.pairs))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Price And Amount Of Exchange
    *
    * @param exchange: (required) exchange
    * @param market: (required) market
    */
    public static func getPriceAndAmountOfExchange(exchange : String,market : String,completion: @escaping (Result<[String:String]?, Error>) -> Void) {
        HopperAPIGetPriceAndAmountOfExchangeRequest.init(exchange: exchange, market: market).request { (data) in
            completion(.success(data.decimals))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get All Tickers Of Exchange
    *
    * @param exchange: (required) exchange
    */
    public static func getAllTickersOfExchange(exchange : String,completion: @escaping (Result<[String:Ticker]?, Error>) -> Void) {
        HopperAPIGetAllTickerOfExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.pairTickers))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Exchange Ticker Pair
    *
    * @param exchange: (required) exchange
    * @param pair: (required) market
    */
    public static func getExchangeTickerPair(exchange : String,pair : String,completion: @escaping (Result<Ticker?, Error>) -> Void) {
        HopperAPIGetExchangeTickerPairRequest.init(exchange: exchange,pair: pair).request { (data) in
            completion(.success(data.ticker))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Pair Order Book Of Exchange
    *
    * @param exchange: (required) exchange
    * @param pair: (required) market
    * @param depth: (required) depth
    */
    public static func getPairOrderBookOfExchange(exchange : String,pair : String,depth : Int,completion: @escaping (Result<HopperAPIGetPairOrderBookOfExchangeData?, Error>) -> Void) {
        HopperAPIGetPairOrderBookOfExchangeRequest.init(exchange: exchange,pair: pair,depth: depth).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /*!
    * @discussion Get Portal Exchange Key Maps
    *
    */
    public static func getPortalExchangeKeyMaps(completion: @escaping (Result<[String:String]?, Error>) -> Void) {
        HopperAPIGetPortalExchangeKeyMapsRequest.init("").request { (data) in
            completion(.success(data.maps))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Portal Pairs
    *
    */
    public static func getPortalExchangePairMaps(completion: @escaping (Result<CHPortalMaps?, Error>) -> Void) {
        HopperAPIGetPortalExchangePairMapsRequest.init("").request { (data) in
            completion(.success(data.maps))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    
}
