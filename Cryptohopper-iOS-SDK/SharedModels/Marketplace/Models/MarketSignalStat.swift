//
//  MarketSignalStat.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignalStat : Codable {
    
    var weekly : String?
    var daily : String?
    var totalSignals3Months : String?
    var averageProfit : String?
    var totalSubscribers : String?
    
    private enum CodingKeys: String, CodingKey {
        case weekly = "weekly"
        case daily = "daily"
        case totalSignals3Months = "total_signals_3_months"
        case averageProfit = "average_profit"
        case totalSubscribers = "total_subscribers"
    }
    
}
