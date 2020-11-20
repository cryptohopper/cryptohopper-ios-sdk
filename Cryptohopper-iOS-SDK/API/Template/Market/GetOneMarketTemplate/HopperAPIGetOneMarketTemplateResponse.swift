//
//  HopperAPIGetOneMarketTemplateResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetOneMarketTemplateResponse: Codable {
    
    var template : MarketTemplate?
    
    private enum CodingKeys: String, CodingKey {
        case template = "data"
    }
    
}
