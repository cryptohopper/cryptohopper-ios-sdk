//
//  MarketTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketplaceTemplate : Codable {
    
    var id : String?
    var itemId : String?
    var type : String?
    var name : String?
    var logo : String?
    var featureImage : String?
    var link : String?
    var rating : String?
    var totalVotes : String?
    var sales : String?
    var priceId : String?
    
    var exchange : String?
    var baseCurrency : String?
    var version : Int?
    var updated : Date?
    var updateInfo : String?
    var created : Date?
    var description : String?
    var hidden_configuration : [String]?
    var allowedCoins : [String]?
    var reviews : MarketplaceTemplateReviewData?
    var price : Double?
    var priceCurrency : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case itemId = "item_id"
        case type = "type"
        case name = "name"
        case logo = "logo"
        case featureImage = "feature_image"
        case link = "link"
        case rating = "rating"
        case totalVotes = "total_votes"
        case sales = "sales"
        case priceId = "price_id"
        
        case exchange = "exchange"
        case baseCurrency = "base_currency"
        case version = "version"
        case updated = "updated"
        case updateInfo = "update_info"
        case created = "created"
        case description = "description"
        case hidden_configuration = "hidden_configuration"
        case allowedCoins = "allowed_coins"
        case reviews = "reviews"
        case price = "price"
        case priceCurrency = "price_currency"
    }
    
}


class MarketplaceTemplateReviewData : Codable {
    
    var data : [MarketReview]?
    
    private enum CodingKeys : String,CodingKey {
        case data = "data"
    }
    
}
