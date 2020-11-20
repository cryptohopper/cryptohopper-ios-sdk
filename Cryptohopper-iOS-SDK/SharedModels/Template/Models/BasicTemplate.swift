//
//  BasicTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class BasicTemplate : Codable {
    
    var id : String?
    var name : String?
    var baseCurrency : String?
    var image : String?
    var coins : String?
    var botType : String?
    //var config : HopperConfig?
    var configPools : [HopperConfigPool]?
    var signals : [MarketSignal]?
    var triggers : [String]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case baseCurrency = "base_currency"
        case image = "image"
        case coins = "coins"
        case botType = "bot_type"
        //case config = "config"
        case configPools = "config_pools"
        case signals = "signals"
        case triggers = "triggers"
    }
    
}
