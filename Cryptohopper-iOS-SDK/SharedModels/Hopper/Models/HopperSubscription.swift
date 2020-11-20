//
//  HopperSubscription.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation

public class HopperSubscription : Codable {
    
    let hopperId : Int?
    let subscriptionId : Int?
    let startTime : String?
    let endTime : String?
    let subscriptionStatus : String?
    let autoRenewal : String?
    let planName : String?
    let planDescription : String?
    
    private enum CodingKeys: String, CodingKey {
        case hopperId = "hopper_id"
        case subscriptionId = "subscription_id"
        case startTime = "start_time"
        case endTime = "end_time"
        case subscriptionStatus = "subscription_status"
        case autoRenewal = "auto_renewal"
        case planName = "plan_name"
        case planDescription = "plan_description"
    }

}
