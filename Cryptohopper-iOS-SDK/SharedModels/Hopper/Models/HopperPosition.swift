//
//  HopperPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation

public class HopperPosition : Codable {
    
    var id : String?
    var pair : String?
    var currency : String?
    var amount : String?
    var rate : String?
    var buyId : String?
    var orderId : String?
    var sellId : String?
    var buyTrigger : String?
    var sellTrigger : String?
    var taValues : String?
    var percentageProfit : String?
    var stopLoss : String?
    var stopLossPercentage : String?
    var sellRate : String?
    var trailingPercentage : String?
    var trailingArm : String?
    var trailingArmPercentage : String?
    var buyTime : String?
    var sellTime : String?
    var autoCloseTime : String?
    var hold : String?
    var sold : String?
    var cost : String?
    
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
