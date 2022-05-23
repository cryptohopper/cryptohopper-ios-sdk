//
//  UserSubscription.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserSubscription : Codable {
    
    public private(set) var subscriptionId : String?
    public private(set) var planId : String?
    public private(set) var paymentTerm : String?
    public private(set) var paymentMethodId : String?
    public private(set) var startTime : String?
    public private(set) var endTime : String?
    public private(set) var subscriptionStatus : String?
    public private(set) var autoRenewal : String?
    public private(set) var planName : String?
    public private(set) var planDescription : String?
    
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
