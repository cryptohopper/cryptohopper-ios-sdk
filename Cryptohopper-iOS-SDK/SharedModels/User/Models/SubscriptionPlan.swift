//
//  SubscriptionPlan.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class SubscriptionPlan : Codable {
    
    public private(set) var planId : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var priceMonth : String?
    public private(set) var priceYear : String?
    public private(set) var subscribed : Int?
    
    private enum CodingKeys: String, CodingKey {
        case planId = "planId"
        case name = "name"
        case description = "description"
        case priceMonth = "price_month"
        case priceYear = "price_year"
        case subscribed = "subscribed"
    }
    
}
