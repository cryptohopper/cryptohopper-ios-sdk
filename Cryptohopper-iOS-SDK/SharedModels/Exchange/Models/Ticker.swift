//
//  Ticker.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//


import Foundation

public class Ticker : Codable {
    
    var currencyPair : String?
    var last : String?
    var lowestAsk : String?
    var highestBid : String?
    var percentChange : String?
    var baseVolume : String
    var quoteVolume : String?
    var isFrozen : Int?
    var oneDayHigh : String?
    var oneDayLow : String?
    
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
