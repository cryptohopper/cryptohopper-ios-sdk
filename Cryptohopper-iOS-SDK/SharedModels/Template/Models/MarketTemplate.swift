//
//  MarketTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class MarketTemplate : Codable {
    
    var templateId : String?
    var type : String?
    var itemId : String?
    var name : String?
    var description : String?
    var logo : String?
    var exchange : String?
    var baseCurrency : String?
    var currencies : String?
    var hiddenConfig : String?
    var hasTriggers : Int?
    var hasConfigPool : Int?
    var hasSignals : Int?
    var rating : String?
    var totalVotes : String?
    var createdDate : String?
    var link : String?
    
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
        case hiddenConfig = "hidden_configuration"
        case hasTriggers = "hasTriggers"
        case hasConfigPool = "hasConfigPool"
        case hasSignals = "hasSignals"
        case rating = "rating"
        case totalVotes = "total_votes"
        case createdDate = "created_date"
        case link = "link"
    }
    
}

