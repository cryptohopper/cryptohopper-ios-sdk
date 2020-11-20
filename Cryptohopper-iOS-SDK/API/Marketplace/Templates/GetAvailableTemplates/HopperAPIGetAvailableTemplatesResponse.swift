//
//  HopperAPIGetAvailableTemplatesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetAvailableTemplatesResponse: Codable {
    
    var data : HopperAPIGetAvailableTemplatesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetAvailableTemplatesData: Codable {
    
    var templates : [MarketplaceTemplate]?
    
    private enum CodingKeys: String, CodingKey {
        case templates = "template"
    }
    
}
