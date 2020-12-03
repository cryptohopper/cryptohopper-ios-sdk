//
//  Candle.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Candle : Codable {
    
    public private(set) var date : Date?
    public private(set) var high : Double?
    public private(set) var low : Double?
    public private(set) var open : Double?
    public private(set) var close : Double?
    public private(set) var volume : Double?
    public private(set) var quoteVolume : Double?
    
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
