//
//  HopperAPIGetTemplatesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetTemplatesResponse: Codable {
    
    var data : HopperAPIGetTemplatesData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetTemplatesData: Codable {
    
    var templates : [Template]?
    
    private enum CodingKeys: String, CodingKey {
        case templates = "templates"
    }
    
}
