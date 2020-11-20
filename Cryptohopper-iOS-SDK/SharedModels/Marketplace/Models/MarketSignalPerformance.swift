//
//  MarketSignalPerformanceA.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignalPerformance : Codable {
    
    var id : String?
    var signalId : String?
    var exchange : String?
    var baseCurrency : String?
    var currency : String?
    var market : String?
    var date : String?
    var signalRate : String?
    var signalType : String
    var signalConfig : [String]?
    var result5min : String?
    var result15min : String?
    var result1hour : String?
    var result3hour : String?
    var result6hour : String?
    var result12hour : String?
    var result1day : String?
    var result3day : String?
    var result1week : String?
    var result1month : String?
    var resultHighest : String?
    var resultLowest : String?
    
    
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
