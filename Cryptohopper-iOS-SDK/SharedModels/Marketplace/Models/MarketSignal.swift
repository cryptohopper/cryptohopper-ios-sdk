//
//  MarketSignal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignal : Codable {
    
    public private(set) var id : String?
    public private(set) var signalId : String?
    public private(set) var performance : [MarketSignalPerformanceTick]?
    public private(set) var planId : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var logo : String?
    public private(set) var type : String?
    public private(set) var featureImage : String?
    public private(set) var subscriptionFeeCurrency : String?
    public private(set) var subscriptionFee : String?
    public private(set) var exchanges : String?
    public private(set) var performancePct : String?
    public private(set) var rating : String?
    public private(set) var totalVotes : String?
    public private(set) var link : String?
    public private(set) var lastTenSignals : [Signal]?
    
    public private(set) var signalDetails : [String:String]?
    public private(set) var reviews : MarketSignalReviewData?
    
    public private(set) var sellerId : String?
    public private(set) var sellerName : String?
    public private(set) var sellerLogo : String?
    
    public private(set) var isRefundable : Int?
    
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
        case signalDetails = "signal_details"
        case reviews = "reviews"
        case sellerId = "seller_id"
        case sellerName = "seller_name"
        case sellerLogo = "seller_logo"
        case isRefundable = "is_refundable"
    }
    
}

public class MarketSignalReviewData : Codable {

    public private(set) var data : [MarketReview]?

    private enum CodingKeys : String,CodingKey {
        case data = "data"
    }

}
