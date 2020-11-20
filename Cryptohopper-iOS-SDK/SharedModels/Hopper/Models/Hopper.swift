//
//  Hopper.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public class Hopper : Codable {
    
    var id : String?
    var name : String?
    var exchange : HopperConfigExchange?
    var baseCurrency : String?
    var buyingEnabled : Int?
    var sellingEnabled : Int?
    var enabled : Int?
    var errorMessage : String?
    var configError : String?
    var created : String?
    var startBalance : String?
    
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
    }
    
}

