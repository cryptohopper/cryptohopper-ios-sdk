//
//  HopperStats.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/01/2021.
//

import Foundation

public class HopperStats : Codable {
    
    public private(set) var dateRange: Bool?
    public private(set) var startTime : Int?
    public private(set) var endTime : Int?
    public private(set) var buysSells : AnyCodable?
    public private(set) var mostTraded : [String:Int]?
    public private(set) var averageHoldingTime : [String:Double]?
    public private(set) var averageProfit : [String:Double]?
    public private(set) var profitSellTriggers : [String:Double]?
    public private(set) var profitSellTriggersTotal : Int?
    public private(set) var profitSellTriggersCounts : [String:Int]?
    public private(set) var profitBuyTriggers : [String:Double]?
    public private(set) var profitBuyTriggersTotal : Int?
    public private(set) var profitBuyTriggersCounts : [String:Int]?
    public private(set) var dailyProfits : [[Double]]?
    public private(set) var allocationOfFunds : [String:AnyCodable]?
    public private(set) var currentInAssets : [[QuantumValue]]?
    public private(set) var currentUsdInAssets : [[QuantumValue]]?
    public private(set) var averageProfitTotal : Double?
    public private(set) var averageHoldingTimeTotal : Double?
    public private(set) var totalTraded : Int?
    public private(set) var profitStats : [String:String]?
    public private(set) var assets : [String:Double]?
    public private(set) var statsOpenPositions : HopperStatsOpenPosition?
    
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
        case statsOpenPositions = "stats_open_positions"
    }
    
}

public class HopperStatsOpenPosition : Codable {
    
    public private(set) var perCurrencyTotal : [String:[String:String]]?
    //public private(set) var otherCoins : [String:[String:String]]?
    public private(set) var otherCoins : [String]?
    public private(set) var data : [HopperStatsOpenPositionData]?
    public private(set) var totalCost : String?
    public private(set) var averagePercentage : AnyCodable?
    public private(set) var averageHold : String?
    public private(set) var totalPositions : Int?
    
    private enum CodingKeys : String, CodingKey {
        case perCurrencyTotal = "per_cur_totals"
        case otherCoins = "other_coins"
        case data = "data"
        case totalCost = "total_costs"
        case averagePercentage = "average_perc"
        case averageHold = "average_hold"
        case totalPositions = "total_pos"
    }
    
}

public class HopperStatsOpenPositionData : Codable {
    
    public private(set) var label : String?
    public private(set) var data : Double
    
    private enum CodingKeys : String, CodingKey {
        case label = "label"
        case data = "data"
    }
    
}
