//
//  MarketCopyBot.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 26/01/2023.
//

import Foundation

public class MarketCopyBot: Codable {
    
    public private(set) var id : String?
    public private(set) var itemId : String?
    public private(set) var exchange : String?
    public private(set) var description : String?
    public private(set) var quoteCurrency : String?
    public private(set) var allowedCoins : [String]?
    public private(set) var freeTrial : String?
    public private(set) var stats : MarketCopyBotStats?
    public private(set) var type : String?
    public private(set) var name : String?
    public private(set) var logo : String?
    public private(set) var featureImage : String?
    public private(set) var topItem : String?
    public private(set) var link : String?
    public private(set) var rating : String?
    public private(set) var totalVotes : String?
    public private(set) var sales : String?
    public private(set) var price : String?
    public private(set) var created : String?
    public private(set) var priceCurrency : String?
    public private(set) var maxDownloads : String?
    public private(set) var availableInApp : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case itemId = "item_id"
        case exchange = "exchange"
        case description = "description"
        case quoteCurrency = "quote_currency"
        case allowedCoins = "allowed_coins"
        case freeTrial = "free_trial"
        case stats = "stats"
        case type = "type"
        case name = "name"
        case logo = "logo"
        case featureImage = "feature_image"
        case topItem = "top_item"
        case link = "link"
        case totalVotes = "total_votes"
        case sales = "sales"
        case price = "price"
        case rating = "rating"
        case created = "created"
        case priceCurrency = "price_currency"
        case maxDownloads = "max_downloads"
        case availableInApp = "available_in_app"
    }
    
}

public class MarketCopyBotStats : Codable {
    
    public private(set) var totalTrades : String?
    public private(set) var totalBuys : String?
    public private(set) var totalSells : String?
    public private(set) var tradesWin : String?
    public private(set) var tradesLoss : String?
    public private(set) var highestProfit : String?
    public private(set) var drawdown : MarketCopyBotStatsDrawdown?
    public private(set) var averageProfit : String?
    public private(set) var tradesWinPerc : String?
    public private(set) var tradesLossPerc : String?
    public private(set) var winLossRatio : String?
    public private(set) var chart : [[String]]?
    public private(set) var chartAssets : [String:[[String]]?]?
    public private(set) var totalCopiers : String?
    public private(set) var tradeCurrencies : [MarketCopyBotStatsTradeCurrency]?
    public private(set) var tradeCurrenciesStats : [MarketCopyBotStatsTradeCurrencyStats]?
    public private(set) var startDate : String?
    
    private enum CodingKeys: String, CodingKey {
        case totalTrades = "total_trades"
        case totalBuys = "total_buys"
        case totalSells = "total_sells"
        case tradesWin = "trades_win"
        case tradesLoss = "trades_loss"
        case highestProfit = "highest_profit"
        case drawdown = "drawdown"
        case averageProfit = "average_profit"
        case tradesWinPerc = "trades_win_perc"
        case tradesLossPerc = "trades_loss_perc"
        case winLossRatio = "win_loss_ratio"
        case chart = "chart"
        case chartAssets = "chart_assets"
        case totalCopiers = "total_copiers"
        case tradeCurrencies = "trade_currencies"
        case tradeCurrenciesStats = "trade_currencies_stats"
        case startDate = "start_date"
    }
    
}

public class MarketCopyBotStatsDrawdown : Codable {
    
    public private(set) var inValue : String?
    public private(set) var percentage : String?
    public private(set) var peak : String?
    public private(set) var low : String?
    public private(set) var all : [[String:String]]?
    
    private enum CodingKeys: String, CodingKey {
        case inValue = "in_value"
        case percentage = "percentage"
        case peak = "peak"
        case low = "low"
        case all = "all"
    }
    
}

public class MarketCopyBotStatsTradeCurrency : Codable {
    
    public private(set) var cur : String?
    public private(set) var count : String?
    public private(set) var perc : String?
    public private(set) var highestProfit : String?
    public private(set) var lowestProfit : String?
    public private(set) var averageProfit : String?
    
    private enum CodingKeys: String, CodingKey {
        case cur = "cur"
        case count = "count"
        case perc = "perc"
        case highestProfit = "highest_profit"
        case lowestProfit = "lowest_profit"
        case averageProfit = "average_profit"
    }
    
}

public class MarketCopyBotStatsTradeCurrencyStats : Codable {
    
    public private(set) var cur : String?
    public private(set) var count : String?
    public private(set) var highestProfit : String?
    public private(set) var lowestProfit : String?
    public private(set) var averageProfit : String?
    public private(set) var perc : String?
    
    private enum CodingKeys: String, CodingKey {
        case cur = "cur"
        case count = "count"
        case highestProfit = "highest_profit"
        case lowestProfit = "lowest_profit"
        case averageProfit = "average_profit"
        case perc = "perc"
    }
    
}
