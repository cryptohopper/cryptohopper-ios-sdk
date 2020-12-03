//
//  MarketSignalStat.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignalStat : Codable {
    
    public private(set) var weekly : String?
    public private(set) var daily : String?
    public private(set) var totalSignals3Months : String?
    public private(set) var averageProfit : String?
    public private(set) var totalSubscribers : String?
    
    private enum CodingKeys: String, CodingKey {
        case weekly = "weekly"
        case daily = "daily"
        case totalSignals3Months = "total_signals_3_months"
        case averageProfit = "average_profit"
        case totalSubscribers = "total_subscribers"
    }
    
}
