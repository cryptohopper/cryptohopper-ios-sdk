//
//  HopperOrder.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

public class HopperOrder : Codable {
    
    var id : String?
    var pair : String?
    var orderType : String?
    var orderId : String?
    var orderTrigger : String?
    var amount : String?
    var rate : String?
    var taValues : String?
    var percentageProfit : Double?
    var hold : Int?
    var sold : Int?
    var openTime : String?
    var closeTime : String?
    var bundled : Int?
    var marketOrder : Int?
    var cost : Double?
    var date : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case pair = "pair"
        case orderType = "order_type"
        case orderId = "order_id"
        case orderTrigger = "order_trigger"
        case amount = "amount"
        case rate = "rate"
        case taValues = "ta_values"
        case percentageProfit = "percentage_profit"
        case hold = "hold"
        case sold = "sold"
        case openTime = "open_time"
        case closeTime = "close_time"
        case bundled = "bundled"
        case marketOrder = "market_order"
        case cost = "cost"
        case date = "date"
    }
    
}
