//
//  HopperAPIGetTemplateResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTemplateResponse: Codable {
    
    var data : MarketplaceTemplate?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
