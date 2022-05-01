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
    }
    
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
//        //taValues : TAValue?
//    }
    
}
