//
//  HopperAPIGetUserNotificationsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserNotificationsResponse: Codable {
    
    var notifications : [UserNotification]?
    
    private enum CodingKeys: String, CodingKey {
        case notifications = "data"
    }
    
}
