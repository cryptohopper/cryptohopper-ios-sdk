//
//  MarketTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class MarketTemplate : Codable {
    
    public private(set) var templateId : String?
    public private(set) var type : String?
    public private(set) var itemId : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var logo : String?
    public private(set) var exchange : String?
    public private(set) var baseCurrency : String?
    public private(set) var currencies : String?
    public private(set) var hiddenConfig : String?
    public private(set) var hasTriggers : Int?
    public private(set) var hasConfigPool : Int?
    public private(set) var hasSignals : Int?
    public private(set) var rating : String?
    public private(set) var totalVotes : String?
    public private(set) var createdDate : String?
    public private(set) var link : String?
    
    public private(set) var price : String?
    public private(set) var priceCurrency : String?
    
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
        case price = "price"
        case priceCurrency = "price_currency"
    }
    
}
