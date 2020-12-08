//
//  Hopper.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public class Hopper : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var exchange : HopperConfigExchange?
    public private(set) var baseCurrency : String?
    public private(set) var buyingEnabled : Int?
    public private(set) var sellingEnabled : Int?
    public private(set) var enabled : Int?
    public private(set) var errorMessage : String?
    public private(set) var configError : String?
    public private(set) var created : String?
    public private(set) var startBalance : String?
    public private(set) var subscriptionId : Int?
    public private(set) var statTime : String?
    public private(set) var endTime : String?
    public private(set) var subscriptionStatus : String?
    public private(set) var autoRenewal : String?
    public private(set) var subscription : String?
    public private(set) var planName : String?
    public private(set) var planDescription : String?
    public private(set) var productId : String?
    public private(set) var lastLoadedConfig : Bool?
    public private(set) var image : String?
    public private(set) var setDefault : String?
    public private(set) var lastSignal : String?
    public private(set) var lastSignalEncoding : String?
    public private(set) var totalCurrency : String?
    public private(set) var botType : String?
    public private(set) var userId : String?
    public private(set) var allowedCoins : [String]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case exchange = "exchange"
        case baseCurrency = "base_currency"
        case buyingEnabled = "buying_enabled"
        case sellingEnabled = "selling_enabled"
        case enabled = "enabled"
        case errorMessage = "error_message"
        case configError = "config_error"
        case created = "created"
        case startBalance = "start_balance"
        case subscriptionId = "subscription_id"
        case statTime = "start_time"
        case endTime = "end_time"
        case subscriptionStatus = "subscription_status"
        case autoRenewal = "auto_renewal"
        case subscription = "subscription"
        case planName = "plan_name"
        case planDescription = "plan_description"
        case productId = "product_id"
        case lastLoadedConfig = "last_loaded_config"
        case image = "image"
        case setDefault = "set_default"
        case lastSignal = "last_signal"
        case lastSignalEncoding = "last_signal_encoding"
        case totalCurrency = "total_cur"
        case botType = "bot_type"
        case userId = "user_id"
        case allowedCoins = "allowed_coins"
    }
    
}



