//
//  SubscriptionPlan.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class SubscriptionPlan : Codable {
    
    var planId : String?
    var name : String?
    var description : String?
    var priceMonth : String?
    var priceYear : String?
    
    private enum CodingKeys: String, CodingKey {
        case planId = "planId"
        case name = "name"
        case description = "description"
        case priceMonth = "price_month"
        case priceYear = "price_year"
    }
    
}
