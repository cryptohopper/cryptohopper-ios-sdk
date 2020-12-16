//
//  HopperTradeHistory.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 07/12/2020.
//

import Foundation
import Foundation

public class HopperTradeHistory : Codable {
    
    public private(set) var id : String?
    public private(set) var exchange : String?
    public private(set) var currency : String?
    public private(set) var pair : String?
    public private(set) var type : String?
    public private(set) var orderCur : String?
    public private(set) var orderId : String?
    public private(set) var date : String?
    public private(set) var amount : String?
    public private(set) var rate : String?
    public private(set) var total : String?
    public private(set) var fee : String?
    public private(set) var result : String?
    public private(set) var triggerStrategy : String?
    public private(set) var strategyResult : TAValue?
    public private(set) var buyId : String?
    public private(set) var isShort : String?
    public private(set) var resultShort : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case exchange = "exchange"
        case currency = "currency"
        case pair = "pair"
        case type = "type"
        case orderCur = "order_cur"
        case orderId = "order_id"
        case date = "date"
        case amount = "amount"
        case rate = "rate"
        case total = "total"
        case fee = "fee"
        case result = "result"
        case triggerStrategy = "trigger_strategy"
        case strategyResult = "strategy_result"
        case buyId = "buy_id"
        case isShort = "is_short"
        case resultShort = "result_short"
    }
    
}
