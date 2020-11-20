//
//  HopperAPIGetMarketTemplatesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetMarketTemplatesResponse: Codable {
    
    var data : HopperAPIGetMarketTemplatesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetMarketTemplatesData: Codable {
    
    var templates : [MarketTemplate]?
    
    private enum CodingKeys: String, CodingKey {
        case templates = "templates"
    }
    
}
