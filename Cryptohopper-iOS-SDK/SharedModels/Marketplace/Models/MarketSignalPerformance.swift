//
//  MarketSignalPerformanceA.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignalPerformance : Codable {
    
    public private(set) var id : String?
    public private(set) var signalId : String?
    public private(set) var exchange : String?
    public private(set) var baseCurrency : String?
    public private(set) var currency : String?
    public private(set) var market : String?
    public private(set) var date : String?
    public private(set) var signalRate : String?
    public private(set) var signalType : String
    public private(set) var signalConfig : [String]?
    public private(set) var result5min : String?
    public private(set) var result15min : String?
    public private(set) var result1hour : String?
    public private(set) var result3hour : String?
    public private(set) var result6hour : String?
    public private(set) var result12hour : String?
    public private(set) var result1day : String?
    public private(set) var result3day : String?
    public private(set) var result1week : String?
    public private(set) var result1month : String?
    public private(set) var resultHighest : String?
    public private(set) var resultLowest : String?
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case signalId = "signal_id"
        case exchange = "exchange"
        case baseCurrency = "base_currency"
        case currency = "currency"
        case market = "market"
        case date = "date"
        case signalRate = "signal_rate"
        case signalType = "signal_type"
        case signalConfig = "signal_config"
        case result5min = "result_5min"
        case result15min = "result_15min"
        case result1hour = "result_1hour"
        case result3hour = "result_3hour"
        case result6hour = "result_6hour"
        case result12hour = "result_12hour"
        case result1day = "result_1day"
        case result3day = "result_3day"
        case result1week = "result_1week"
        case result1month = "result_1month"
        case resultHighest = "result_highest"
        case resultLowest = "result_lowest"
    }
    
}
