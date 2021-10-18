//
//  HopperAPIUpdateGetMobileNotificationResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 15/10/2021.
//

import Foundation

class HopperAPIUpdateGetMobileNotificationResponse: Codable {
    
    var notifications : [String:String]?
    
    private enum CodingKeys: String, CodingKey {
        case notifications = "data"
    }
    
}
