//
//  PushNotificationPermissions.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public enum PushNotificationPermissions : String,Codable {
    
    case configError = "config_error"
    case onFirstStart = "on_first_start"
    case onTrigger = "on_trigger"
    case onPanicStart = "on_panic_start"
    case orderPlaced = "order_placed"
    case tradeCompleted = "trade_completed"
    case orderCanceled = "order_cancelled"
    
    private enum CodingKeys: String, CodingKey {
        case configError = "config_error"
        case onFirstStart = "on_first_start"
        case onTrigger = "on_trigger"
        case onPanicStart = "on_panic_start"
        case orderPlaced = "order_placed"
        case tradeCompleted = "trade_completed"
        case orderCanceled = "order_cancelled"
    }
    
}
