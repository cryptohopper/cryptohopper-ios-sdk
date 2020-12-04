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
    public private(set) var sellRate : String?
    public private(set) var sellTime : String?
    public private(set) var buyRate : String?
    public private(set) var buyTime : String?
    
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
        case sellRate = "sell_rate"
        case sellTime = "sell_time"
        case buyRate = "buy_rate"
        case buyTime = "buy_time"
    }
    
}
