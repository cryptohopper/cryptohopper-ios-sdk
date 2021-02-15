//
//  MarketTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketplaceTemplate : Codable {
    
    public private(set) var id : String?
    public private(set) var itemId : String?
    public private(set) var type : String?
    public private(set) var name : String?
    public private(set) var logo : String?
    public private(set) var featureImage : String?
    public private(set) var link : String?
    public private(set) var rating : String?
    public private(set) var totalVotes : String?
    public private(set) var sales : String?
    public private(set) var priceId : String?
    
    public private(set) var exchange : String?
    public private(set) var baseCurrency : String?
    public private(set) var version : String?
    public private(set) var updated : String?
    public private(set) var updateInfo : String?
    public private(set) var created : String?
    public private(set) var description : String?
    public private(set) var hidden_configuration : [String]?
    public private(set) var allowedCoins : [String]?
    public private(set) var reviews : MarketplaceTemplateReviewData?
    public private(set) var price : String?
    public private(set) var priceCurrency : String?
    
    public private(set) var dependentStrategies : [MarketStrategy]?
    public private(set) var sellerId : String?
    public private(set) var sellerName : String?
    public private(set) var sellerLogo : String?
    
    
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
        
        case dependentStrategies = "dependent_strategies"
        case sellerId = "seller_id"
        case sellerName = "seller_name"
        case sellerLogo = "seller_logo"
    }
    
}


public class MarketplaceTemplateReviewData : Codable {
    
    public private(set) var data : [MarketReview]?
    
    private enum CodingKeys : String,CodingKey {
        case data = "data"
    }
    
}
