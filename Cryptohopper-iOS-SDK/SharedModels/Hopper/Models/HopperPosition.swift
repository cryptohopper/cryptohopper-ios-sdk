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
    }
    
}
