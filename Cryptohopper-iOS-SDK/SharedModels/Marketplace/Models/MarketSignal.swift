//
//  MarketSignal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignal : Codable {
    
    var id : String?
    var signalId : String?
    var performance : [MarketSignalPerformanceTick]?
    var planId : String?
    var name : String?
    var description : String?
    var logo : String?
    var type : String?
    var featureImage : String?
    var subscriptionFeeCurrency : String?
    var subscriptionFee : String?
    var exchanges : String?
    var performancePct : String?
    var rating : String?
    var totalVotes : String?
    var link : String?
    var lastTenSignals : [Signal]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case signalId = "signal_id"
        case performance = "performance"
        case planId = "plan_id"
        case name = "name"
        case description = "description"
        case logo = "logo"
        case type = "type"
        case featureImage = "feature_image"
        case subscriptionFeeCurrency = "subscription_fee_currency"
        case subscriptionFee = "subscription_fee"
        case exchanges = "exchanges"
        case performancePct = "performance_pct"
        case rating = "rating"
        case totalVotes = "total_votes"
        case link = "link"
        case lastTenSignals = "last_10_signals"
    }
    
}
