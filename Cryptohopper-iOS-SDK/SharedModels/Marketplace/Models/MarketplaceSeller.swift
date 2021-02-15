//
//  MarketplaceSeller.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 12/02/2021.
//

import Foundation


public class MarketplaceSeller : Codable {
    
    public private(set) var id : Int?
    public private(set) var name : String?
    public private(set) var logo : String?
    public private(set) var description : String?
    public private(set) var totalDownloads : String?
    public private(set) var totalSubscribers : String?
    public private(set) var marketplaceItems : [MarketplaceSellerItem]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case logo = "logo"
        case description = "description"
        case totalDownloads = "total_downloads"
        case totalSubscribers = "total_subscribers"
        case marketplaceItems = "marketplace_items"
    }
    
}

public class MarketplaceSellerItem: Codable {
    
    public private(set) var id : String?
    public private(set) var type : String?
    public private(set) var logo : String?
    public private(set) var name : String?
    public private(set) var rating : String?
    public private(set) var ratingCount : String?
    public private(set) var price : String?
    public private(set) var priceCurrency : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case logo = "logo"
        case name = "name"
        case rating = "rating"
        case ratingCount = "rating_count"
        case priceCurrency = "price_currency"
        case price = "price"
    }
}

