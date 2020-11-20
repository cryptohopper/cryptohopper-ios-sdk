//
//  Candle.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Candle : Codable {
    
    var date : Date?
    var high : Double?
    var low : Double?
    var open : Double?
    var close : Double?
    var volume : Double?
    var quoteVolume : Double?
    
    private enum CodingKeys: String, CodingKey {
        case date = "date"
        case high = "high"
        case low = "low"
        case open = "open"
        case close = "close"
        case volume = "volume"
        case quoteVolume = "quoteVolume"
    }
    
}
