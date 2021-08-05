//
//  HopperBotType.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 05/08/2021.
//

import Foundation

public enum HopperBotType : String,Codable {
    
    case defaultHopper = "0"
    case exchangeArbitrageHopper = "1"
    case marketmakerHopper = "2"
    case manualTradingHopper = "3"
    case managedHopper = "4"
    case marginAndFuturesHopper = "5"
    case indexFundHopper = "6"
    case copyTradingHopper = "7"
    case tournamentHopper = "8"
    case miningManagerHopper = "9"
    case fundManagerHopper = "10"
    
    private enum CodingKeys: String, CodingKey {
        case defaultHopper = "0"
        case exchangeArbitrageHopper = "1"
        case marketmakerHopper = "2"
        case manualTradingHopper = "3"
        case managedHopper = "4"
        case marginAndFuturesHopper = "5"
        case indexFundHopper = "6"
        case copyTradingHopper = "7"
        case tournamentHopper = "8"
        case miningManagerHopper = "9"
        case fundManagerHopper = "10"
    }
    
}
