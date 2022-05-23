//
//  Ticker.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//


import Foundation

public class Ticker : Codable {
    
    public private(set) var currencyPair : String?
    public private(set) var last : String?
    public private(set) var lowestAsk : String?
    public private(set) var highestBid : String?
    public private(set) var percentChange : String?
    public private(set) var baseVolume : String
    public private(set) var quoteVolume : String?
    public private(set) var isFrozen : Int?
    public private(set) var oneDayHigh : String?
    public private(set) var oneDayLow : String?
    
    private enum CodingKeys: String, CodingKey {
        case currencyPair = "currencyPair"
        case last = "last"
        case lowestAsk = "lowestAsk"
        case highestBid = "highestBid"
        case percentChange = "percentChange"
        case baseVolume = "baseVolume"
        case quoteVolume = "quoteVolume"
        case isFrozen = "isFrozen"
        case oneDayHigh = "24hrHigh"
        case oneDayLow = "24hrLow"
    }
    
}
