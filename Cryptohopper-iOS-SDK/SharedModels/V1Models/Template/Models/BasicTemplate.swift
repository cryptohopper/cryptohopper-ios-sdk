//
//  BasicTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class BasicTemplate : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var baseCurrency : String?
    public private(set) var image : String?
    public private(set) var coins : String?
    public private(set) var botType : String?
    public var config : HopperConfig?
    public private(set) var configPools : [HopperConfigPool]?
    public private(set) var signals : [MarketSignal]?
    public private(set) var triggers : [String]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case baseCurrency = "base_currency"
        case image = "image"
        case coins = "coins"
        case botType = "bot_type"
        case config = "config"
        case configPools = "config_pools"
        case signals = "signals"
        case triggers = "triggers"
    }
    
}
