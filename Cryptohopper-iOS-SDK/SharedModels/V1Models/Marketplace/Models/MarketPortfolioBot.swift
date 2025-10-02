//
//  MarketPortfolioBot.swift
//  Pods
//
//  Created by Can Erten on 09/04/2025.
//

import Foundation

public class MarketPortfolioBot: Codable {
    
    public private(set) var id: String?
    public private(set) var itemId: String?
    public private(set) var exchange: String?
    public private(set) var description: String?
    public private(set) var quoteCurrency: String?
    public private(set) var allowedCoins: [String]?
    public private(set) var freeTrial: String?
    public private(set) var chart: [[String]]?
    public private(set) var type: String?
    public private(set) var name: String?
    public private(set) var logo: String?
    public private(set) var featureImage: String?
    public private(set) var topItem: String?
    public private(set) var link: String?
    public private(set) var rating: String?
    public private(set) var totalVotes: String?
    public private(set) var sales: String?
    public private(set) var price: String?
    public private(set) var priceId: String?
    public private(set) var created: String?
    public private(set) var priceCurrency: String?
    public private(set) var maxDownloads: String?
    public private(set) var availableInApp: String?
    public private(set) var riskLevel: String?
    public private(set) var profit: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case itemId = "item_id"
        case exchange = "exchange"
        case description = "description"
        case quoteCurrency = "quote_currency"
        case allowedCoins = "allowed_coins"
        case freeTrial = "free_trial"
        case chart = "chart"
        case type = "type"
        case name = "name"
        case logo = "logo"
        case featureImage = "feature_image"
        case topItem = "top_item"
        case link = "link"
        case rating = "rating"
        case totalVotes = "total_votes"
        case sales = "sales"
        case price = "price"
        case priceId = "price_id"
        case created = "created"
        case priceCurrency = "price_currency"
        case maxDownloads = "max_downloads"
        case availableInApp = "available_in_app"
        case riskLevel = "risk_level"
        case profit = "profit"
    }
}
