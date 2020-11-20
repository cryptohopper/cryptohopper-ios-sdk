//
//  CandleTimeFrame.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public enum CandleTimeFrame : String,Codable {
    
    case fiveMin = "5m"
    case fifteenMin = "15m"
    case thirtyMin = "30m"
    case oneHour = "1h"
    case twoHours = "2h"
    case fourHours = "4h"
    case oneDay = "1d"
    
    private enum CodingKeys: String, CodingKey {
        case fiveMin = "5m"
        case fifteenMin = "15m"
        case thirtyMin = "30m"
        case oneHour = "1h"
        case twoHours = "2h"
        case fourHours = "4h"
        case oneDay = "1d"
    }
    
}
