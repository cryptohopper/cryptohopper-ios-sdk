//
//  Template.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Template : Codable {
    
    var templateId : String?
    var type : String?
    var itemId : String?
    var name : String?
    var description : String?
    var logo : String?
    var exchange : String?
    var baseCurrency : String?
    var currencies : String?
    var hiddenConfiguration : String?
    var hasTriggers : Int?
    var hasConfigPool : Int?
    var hasSignals : Int?
    var allowedCoins : [String]?
    var createdDate : String?
    
    private enum CodingKeys: String, CodingKey {
        case templateId = "template_id"
        case type = "type"
        case itemId = "item_id"
        case name = "name"
        case description = "description"
        case logo = "logo"
        case exchange = "exchange"
        case baseCurrency = "base_currency"
        case currencies = "currencies"
        case hiddenConfiguration = "hidden_configuration"
        case hasTriggers = "hasTriggers"
        case hasConfigPool = "hasConfigPool"
        case hasSignals = "hasSignals"
        case allowedCoins = "allowed_coins"
        case createdDate = "created_date"
    }
}

