//
//  HopperAPIGetHopperStatsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 23/12/2020.
//

import Foundation

public class HopperAPIGetHopperStatsResponse: Codable {
    
    var data : HopperAPIGetHopperStatsData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetHopperStatsData : Codable {
    
    var dateRange: Bool?
    var startTime : Int?
    var endTime : Int?
    var buysSells : [[[Int]]]?
    var mostTraded : [String:Int]?
    var averageHoldingTime : [String:Double]?
    var averageProfit : [String:Double]?
    var profitSellTriggers : [String:Double]?
    var profitSellTriggersTotal : Int?
    var profitSellTriggersCounts : [String:Int]?
    var profitBuyTriggers : [String:Double]?
    var profitBuyTriggersTotal : Int?
    var profitBuyTriggersCounts : [String:Int]?
    var dailyProfits : [[Double]]?
    var allocationOfFunds : [String:String]?
    var currentInAssets : [[QuantumValue]]?
    var currentUsdInAssets : [[QuantumValue]]?
    var averageProfitTotal : Double?
    var averageHoldingTimeTotal : Double?
    var totalTraded : Int?
    var profitStats : [String:String]?
    var assets : [String:Double]?
    
    private enum CodingKeys: String, CodingKey {
        case dateRange = "date_range"
        case startTime = "start_time"
        case endTime = "end_time"
        case buysSells = "buysandsells"
        case mostTraded = "mosttraded"
        case averageHoldingTime = "average_holding_time"
        case averageProfit = "average_profit"
        case profitSellTriggers = "profits_sell_triggers"
        case profitSellTriggersTotal = "profits_sell_triggers_total"
        case profitSellTriggersCounts = "profits_sell_triggers_counts"
        case profitBuyTriggers = "profits_buy_triggers"
        case profitBuyTriggersTotal = "profits_buy_triggers_total"
        case profitBuyTriggersCounts = "profits_buy_triggers_counts"
        case dailyProfits = "daily_profits"
        case allocationOfFunds = "allocation_of_funds"
        case currentInAssets = "currentinassets"
        case currentUsdInAssets = "currentusdinassets"
        case averageProfitTotal = "average_profit_total"
        case averageHoldingTimeTotal = "average_holding_time_total"
        case totalTraded = "totaltraded"
        case profitStats = "profitstats"
        case assets = "assets"
    }
    
}
