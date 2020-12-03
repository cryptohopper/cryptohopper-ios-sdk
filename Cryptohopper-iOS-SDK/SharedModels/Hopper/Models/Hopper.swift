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

