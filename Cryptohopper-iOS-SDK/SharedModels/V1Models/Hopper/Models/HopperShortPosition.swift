//
//  HopperShortPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

public class HopperShortPosition : Codable {
    
    public private(set) var id : String?
    public private(set) var pair : String?
    public private(set) var exchange : String?
    public private(set) var currency : String?
    public private(set) var amount : String?
    public private(set) var rate : String?
    public private(set) var val : String?
    public private(set) var btc : String?
    public private(set) var startProfit : String?
    public private(set) var startRate : String?
    public private(set) var buyTrigger : String?
    public private(set) var sellTrigger : String?
    public private(set) var percentageProfit : String?
    public private(set) var taValues : TAValue?
    public private(set) var sellRate : String?
    public private(set) var sellTime : String?
    public private(set) var buyRate : String?
    public private(set) var buyTime : String?
    public private(set) var stopLoss : String?
    public private(set) var stopLossPercentage : String?
    public private(set) var trailingPercentage : String?
    public private(set) var trailingArm : String?
    public private(set) var trailingArmPercentage : String?
    public private(set) var autoCloseTime : String?
    public private(set) var autoRemoveTime : String?
    public private(set) var hold : String?
    
    public private(set) var trailingStopLossEnabled : String?
    public private(set) var trailingStopLossOnly : String?
    public private(set) var stopLossEnabled : String?
    public private(set) var autoCloseEnabled : String?
    public private(set) var autoRemoveEnabled : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case pair = "pair"
        case exchange = "exchange"
        case currency = "currency"
        case amount = "amount"
        case rate = "rate"
        case val = "val"
        case btc = "btc"
        case startProfit = "start_profit"
        case startRate = "start_rate"
        case buyTrigger = "buy_trigger"
        case sellTrigger = "sell_trigger"
        case percentageProfit = "percentage_profit"
        case taValues = "ta_values"
        case sellRate = "sell_rate"
        case sellTime = "sell_time"
        case buyRate = "buy_rate"
        case buyTime = "buy_time"
        case stopLoss = "stop_loss"
        case stopLossPercentage = "stop_loss_percentage"
        case trailingPercentage = "trailing_percentage"
        case trailingArm = "trailing_arm"
        case trailingArmPercentage = "trailing_arm_percentage"
        case autoCloseTime = "auto_close_time"
        case autoRemoveTime = "auto_remove_time"
        case hold = "hold"
        case trailingStopLossEnabled = "trailing_stop_loss_enabled"
        case trailingStopLossOnly = "trailing_stop_loss_only"
        case stopLossEnabled = "stop_loss_enabled"
        case autoCloseEnabled = "auto_close_enabled"
        case autoRemoveEnabled = "auto_remove_enabled"
    }
    
}
