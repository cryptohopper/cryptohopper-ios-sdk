//
//  HopperReserved.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

public class HopperReserved : Codable {
    
    public private(set) var id : String?
    public private(set) var pair : String?
    public private(set) var exchange : String?
    public private(set) var currency : String?
    public private(set) var amount : String?
    public private(set) var rate : String?
    public private(set) var val : String?
    public private(set) var btc : String?
    public private(set) var sellTime : String?
    public private(set) var buyTime : String?
    public private(set) var base : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case pair = "pair"
        case exchange = "exchange"
        case currency = "currency"
        case amount = "amount"
        case rate = "rate"
        case val = "val"
        case btc = "btc"
        case sellTime = "sell_time"
        case buyTime = "buy_time"
        case base = "base"
    }
    
}
