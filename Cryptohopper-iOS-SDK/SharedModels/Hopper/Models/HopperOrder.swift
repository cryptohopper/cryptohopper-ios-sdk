//
//  HopperOrder.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

public class HopperOrder : Codable {
    
    public private(set) var id : String?
    public private(set) var pair : String?
    public private(set) var orderType : String?
    public private(set) var orderId : String?
    public private(set) var orderTrigger : String?
    public private(set) var amount : String?
    public private(set) var rate : String?
    public private(set) var taValues : TAValue?
    public private(set) var percentageProfit : String?
    public private(set) var hold : String?
    public private(set) var sold : String?
    public private(set) var openTime : String?
    public private(set) var closeTime : String?
    public private(set) var bundled : String?
    public private(set) var marketOrder : Int?
    public private(set) var cost : String?
    public private(set) var date : String?
    
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
