//
//  TAValue.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 11/12/2020.
//

import Foundation

public class TAValue : Codable {
    
    public private(set) var settings : TASettings?
    public private(set) var strategy : String?
    public private(set) var coin : String?
    public private(set) var strategyType : String?
    public private(set) var strategyId : String?
    public private(set) var values : AnyCodable?
    public private(set) var signals : AnyCodable?
    public private(set) var indicators : [TAIndicator]?

    
    private enum CodingKeys: String, CodingKey {
        case settings = "settings"
        case strategy = "strategy"
        case coin = "coin"
        case strategyType = "strategy_type"
        case strategyId = "strategy_id"
        case values = "values"
        case signals = "signals"
        case indicators = "indicators"
    }

}

public class TASettings : Codable {

    public private(set) var advanced_ta_ema_disabled : String?
    public private(set) var advanced_ta_sma_disabled : String?
    public private(set) var advanced_ta_kama_disabled : String?
    public private(set) var advanced_ta_candle_size : String?
    public private(set) var advanced_ta_bbands_period : String?
    public private(set) var advanced_ta_bbands_dev_low : String?
    public private(set) var advanced_ta_bbands_dev_up : String?
    public private(set) var advanced_ta_bbands_matype : String?
    public private(set) var advanced_ta_bbands_necessary : String?
    public private(set) var advanced_ta_stoch_disabled : String?
    public private(set) var advanced_ta_stochrsi_disabled : String?
    public private(set) var advanced_ta_rsi_period : String?
    public private(set) var advanced_ta_rsi_overbought : String?
    public private(set) var advanced_ta_rsi_oversold : String?
    public private(set) var advanced_ta_rsi_necessary : String?
    public private(set) var advanced_ta_macd_disabled : String?
    
    private enum CodingKeys: String, CodingKey {
        case advanced_ta_ema_disabled = "advanced_ta_ema_disabled"
        case advanced_ta_sma_disabled = "advanced_ta_sma_disabled"
        case advanced_ta_kama_disabled = "advanced_ta_kama_disabled"
        case advanced_ta_candle_size = "advanced_ta_candle_size"
        case advanced_ta_bbands_period = "advanced_ta_bbands_period"
        case advanced_ta_bbands_dev_low = "advanced_ta_bbands_dev_low"
        case advanced_ta_bbands_dev_up = "advanced_ta_bbands_dev_up"
        case advanced_ta_bbands_matype = "advanced_ta_bbands_matype"
        case advanced_ta_bbands_necessary = "advanced_ta_bbands_necessary"
        case advanced_ta_stoch_disabled = "advanced_ta_stoch_disabled"
        case advanced_ta_stochrsi_disabled = "advanced_ta_stochrsi_disabled"
        case advanced_ta_rsi_period = "advanced_ta_rsi_period"
        case advanced_ta_rsi_overbought = "advanced_ta_rsi_overbought"
        case advanced_ta_rsi_oversold = "advanced_ta_rsi_oversold"
        case advanced_ta_rsi_necessary = "advanced_ta_rsi_necessary"
        case advanced_ta_macd_disabled = "advanced_ta_macd_disabled"
    }
    
}

//public class TAValueOption : Codable {
//
//    public private(set) var arrValue : [String]?
//    public private(set) var dictValue : [String:[String:String]]?
//    
//    private enum CodingKeys: String, CodingKey {
//        case advanced_ta_ema_disabled = "advanced_ta_ema_disabled"
//        case advanced_ta_sma_disabled = "advanced_ta_sma_disabled"
//    }
//    
//    required public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(String.self, forKey: .id)
//        pair = try container.decode(String.self, forKey: .pair)
//        currency = try container.decode(String.self, forKey: .currency)
//        amount = try container.decode(String.self, forKey: .amount)
//        rate = try container.decode(String.self, forKey: .rate)
//        buyId = try container.decode(String.self, forKey: .buyId)
//        orderId = try container.decode(String.self, forKey: .orderId)
//        sellId = try container.decode(String.self, forKey: .sellId)
//        buyTrigger = try container.decode(String.self, forKey: .buyTrigger)
//        sellTrigger = try container.decode(String.self, forKey: .sellTrigger)
//        percentageProfit = try container.decode(String.self, forKey: .percentageProfit)
//        stopLoss = try container.decode(String.self, forKey: .stopLoss)
//        stopLossPercentage = try container.decode(String.self, forKey: .stopLossPercentage)
//        sellRate = try container.decode(String.self, forKey: .sellRate)
//        trailingPercentage = try container.decode(String.self, forKey: .trailingPercentage)
//        trailingArm = try container.decode(String.self, forKey: .trailingArm)
//        trailingArmPercentage = try container.decode(String.self, forKey: .trailingArmPercentage)
//        buyTime = try container.decode(String.self, forKey: .buyTime)
//        sellTime = try container.decode(String.self, forKey: .sellTime)
//        autoCloseTime = try container.decode(String.self, forKey: .autoCloseTime)
//        hold = try container.decode(String.self, forKey: .hold)
//        sold = try container.decode(String.self, forKey: .sold)
//        cost = try container.decode(String.self, forKey: .cost)
//        taValues = try container.decode(Dictionary<Any.self, forKey: .taValues)
//        //taValues : TAValue?
//    }
//    
//}



public class TAIndicator : Codable {
    
    public private(set) var config : TAIndicatorConfig?
    public private(set) var chartPeriod : String?
    public private(set) var type : String?
    public private(set) var name : String?
    
    private enum CodingKeys: String, CodingKey {
        case config = "config"
        case chartPeriod = "chartperiod"
        case type = "type"
        case name = "name"
    }
    
}

public class TAIndicatorConfig : Codable {
    
    public private(set) var candleValue : String?
    public private(set) var period : Int?
    public private(set) var fastK : Int?
    public private(set) var fastD : Int?
    public private(set) var fastDMatype : String?
    public private(set) var keepSignal : Int?
    
    private enum CodingKeys: String, CodingKey {
        case candleValue = "candle_value"
        case period = "period"
        case fastK = "fast_k"
        case fastD = "fast_d"
        case fastDMatype = "fast_d_matype"
        case keepSignal = "keep_signal"
    }
    
}
