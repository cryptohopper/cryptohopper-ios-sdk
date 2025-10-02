//
//  HopperPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation

public class HopperPosition : Codable {
    
    public private(set) var id : String?
    public private(set) var pair : String?
    public private(set) var currency : String?
    public private(set) var amount : String?
    public private(set) var rate : String?
    public private(set) var buyId : String?
    public private(set) var orderId : String?
    public private(set) var sellId : String?
    public private(set) var buyTrigger : String?
    public private(set) var sellTrigger : String?
    public private(set) var taValues : TAValue?
    public private(set) var percentageProfit : String?
    public private(set) var stopLoss : String?
    public private(set) var stopLossPercentage : String?
    public private(set) var sellRate : String?
    public private(set) var trailingPercentage : String?
    public private(set) var trailingArm : String?
    public private(set) var trailingArmPercentage : String?
    public private(set) var buyTime : String?
    public private(set) var sellTime : String?
    public private(set) var autoCloseTime : String?
    public private(set) var hold : String?
    public private(set) var sold : String?
    public private(set) var cost : String?
    public private(set) var tslEnabled : String?
    public private(set) var dcaEnabled : String?
    public private(set) var trailingStopLossEnabled : String?
    public private(set) var trailingStopLossOnly : String?
    public private(set) var stopLossEnabled : String?
    public private(set) var autoCloseEnabled : String?
    public private(set) var dcaLatestAverage : String?
    public private(set) var dcaCount : String?
    public private(set) var autoDca : String?
    public private(set) var dcaTime : String?
    public private(set) var dcaMax : String?
    public private(set) var dcaSize : String?
    public private(set) var dcaPercentage : String?
    public private(set) var dcaOrderType : String?
    public private(set) var dcaStrategy : String?
    public private(set) var dcaPositionLock : String?  // Changed back to String
    public private(set) var dcaCoinLock : String?      // Changed back to String
    public private(set) var dcaCurrentAverageRate : String?
    public private(set) var dcaCurrentProfitLoss : String?
    public private(set) var dcaLatestAverageRate : String?
    public private(set) var dcaCurrentTargetRate : String?
    public private(set) var config : String?           // Added
    public private(set) var deleted : String?          // Added
    public private(set) var btc : String?             // Added
    public private(set) var dcaSizeCustom : String?   // Added
    public private(set) var useDcaPercentageLevel : String? // Added
    public private(set) var dcaMode : String?         // Added
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case pair = "pair"
        case currency = "currency"
        case amount = "amount"
        case rate = "rate"
        case buyId = "buy_id"
        case orderId = "order_id"
        case sellId = "sell_id"
        case buyTrigger = "buy_trigger"
        case sellTrigger = "sell_trigger"
        case taValues = "ta_values"
        case percentageProfit = "percentage_profit"
        case stopLoss = "stop_loss"
        case stopLossPercentage = "stop_loss_percentage"
        case sellRate = "sell_rate"
        case trailingPercentage = "trailing_percentage"
        case trailingArm = "trailing_arm"
        case trailingArmPercentage = "trailing_arm_percentage"
        case buyTime = "buy_time"
        case sellTime = "sell_time"
        case autoCloseTime = "auto_close_time"
        case hold = "hold"
        case sold = "sold"
        case cost = "cost"
        case tslEnabled = "tsl_enabled"
        case dcaEnabled = "dca_enabled"
        case trailingStopLossEnabled = "trailing_stop_loss_enabled"
        case trailingStopLossOnly = "trailing_stop_loss_only"
        case stopLossEnabled = "stop_loss_enabled"
        case autoCloseEnabled = "auto_close_enabled"
        case dcaLatestAverage = "dca_latest_average"
        case dcaCount = "dca_count"
        case autoDca = "auto_dca"
        case dcaTime = "auto_dca_time"
        case dcaMax = "auto_dca_max"
        case dcaSize = "auto_dca_size"
        case dcaPercentage = "auto_dca_percentage"
        case dcaOrderType = "dca_order_type"
        case dcaStrategy = "auto_dca_strategy"
        case dcaPositionLock = "dca_position_lock"
        case dcaCoinLock = "dca_coin_lock"
        case dcaCurrentAverageRate = "dca_current_average_rate"
        case dcaCurrentProfitLoss = "dca_current_profit_loss"
        case dcaLatestAverageRate = "dca_latest_average_rate"
        case dcaCurrentTargetRate = "dca_current_target_rate"
        case config = "config"
        case deleted = "deleted"
        case btc = "btc"
        case dcaSizeCustom = "auto_dca_size_custom"
        case useDcaPercentageLevel = "use_dca_percentage_level"
        case dcaMode = "dca_mode"
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Custom decoding for boolean fields that come as strings
        func decodeBoolAsString(_ key: CodingKeys) throws -> String? {
            if let boolValue = try? container.decode(Bool.self, forKey: key) {
                return boolValue ? "1" : "0"
            }
            return try? container.decode(String.self, forKey: key)
        }
        
        // Decode all fields
        id = try? container.decode(String.self, forKey: .id)
        pair = try? container.decode(String.self, forKey: .pair)
        currency = try? container.decode(String.self, forKey: .currency)
        amount = try? container.decode(String.self, forKey: .amount)
        rate = try? container.decode(String.self, forKey: .rate)
        buyId = try? container.decode(String.self, forKey: .buyId)
        orderId = try? container.decode(String.self, forKey: .orderId)
        sellId = try? container.decode(String.self, forKey: .sellId)
        buyTrigger = try? container.decode(String.self, forKey: .buyTrigger)
        sellTrigger = try? container.decode(String.self, forKey: .sellTrigger)
        taValues = try? container.decode(TAValue.self, forKey: .taValues)
        percentageProfit = try? container.decode(String.self, forKey: .percentageProfit)
        stopLoss = try? container.decode(String.self, forKey: .stopLoss)
        stopLossPercentage = try? container.decode(String.self, forKey: .stopLossPercentage)
        sellRate = try? container.decode(String.self, forKey: .sellRate)
        trailingPercentage = try? container.decode(String.self, forKey: .trailingPercentage)
        trailingArm = try? container.decode(String.self, forKey: .trailingArm)
        trailingArmPercentage = try? container.decode(String.self, forKey: .trailingArmPercentage)
        buyTime = try? container.decode(String.self, forKey: .buyTime)
        sellTime = try? container.decode(String.self, forKey: .sellTime)
        autoCloseTime = try? container.decode(String.self, forKey: .autoCloseTime)
        hold = try? container.decode(String.self, forKey: .hold)
        sold = try? container.decode(String.self, forKey: .sold)
        cost = try? container.decode(String.self, forKey: .cost)
        config = try? container.decode(String.self, forKey: .config)
        deleted = try? container.decode(String.self, forKey: .deleted)
        btc = try? container.decode(String.self, forKey: .btc)
        
        // Handle fields that might be boolean or string
        dcaPositionLock = try? decodeBoolAsString(.dcaPositionLock)
        dcaCoinLock = try? decodeBoolAsString(.dcaCoinLock)
        
        // Rest of the fields
        tslEnabled = try? container.decode(String.self, forKey: .tslEnabled)
        dcaEnabled = try? container.decode(String.self, forKey: .dcaEnabled)
        trailingStopLossEnabled = try? container.decode(String.self, forKey: .trailingStopLossEnabled)
        trailingStopLossOnly = try? container.decode(String.self, forKey: .trailingStopLossOnly)
        stopLossEnabled = try? container.decode(String.self, forKey: .stopLossEnabled)
        autoCloseEnabled = try? container.decode(String.self, forKey: .autoCloseEnabled)
        dcaLatestAverage = try? container.decode(String.self, forKey: .dcaLatestAverage)
        dcaCount = try? container.decode(String.self, forKey: .dcaCount)
        autoDca = try? container.decode(String.self, forKey: .autoDca)
        dcaTime = try? container.decode(String.self, forKey: .dcaTime)
        dcaMax = try? container.decode(String.self, forKey: .dcaMax)
        dcaSize = try? container.decode(String.self, forKey: .dcaSize)
        dcaPercentage = try? container.decode(String.self, forKey: .dcaPercentage)
        dcaOrderType = try? container.decode(String.self, forKey: .dcaOrderType)
        dcaStrategy = try? container.decode(String.self, forKey: .dcaStrategy)
        dcaCurrentAverageRate = try? container.decode(String.self, forKey: .dcaCurrentAverageRate)
        dcaCurrentProfitLoss = try? container.decode(String.self, forKey: .dcaCurrentProfitLoss)
        dcaLatestAverageRate = try? container.decode(String.self, forKey: .dcaLatestAverageRate)
        dcaCurrentTargetRate = try? container.decode(String.self, forKey: .dcaCurrentTargetRate)
        dcaSizeCustom = try? container.decode(String.self, forKey: .dcaSizeCustom)
        useDcaPercentageLevel = try? container.decode(String.self, forKey: .useDcaPercentageLevel)
        dcaMode = try? container.decode(String.self, forKey: .dcaMode)
    }
}
