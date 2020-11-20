//
//  UserSubscription.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserSubscription : Codable {
    
    var subscriptionId : String?
    var planId : String?
    var paymentTerm : String?
    var paymentMethodId : String?
    var startTime : String?
    var endTime : String?
    var subscriptionStatus : String?
    var autoRenewal : String?
    var planName : String?
    var planDescription : String?
    
    private enum CodingKeys: String, CodingKey {
        case subscriptionId = "subscription_id"
        case planId = "plan_id"
        case paymentTerm = "payment_term"
        case paymentMethodId = "payment_method_id"
        case startTime = "start_time"
        case endTime = "end_time"
        case subscriptionStatus = "subscription_status"
        case autoRenewal = "auto_renewal"
        case planName = "plan_name"
        case planDescription = "plan_description"
    }
}
