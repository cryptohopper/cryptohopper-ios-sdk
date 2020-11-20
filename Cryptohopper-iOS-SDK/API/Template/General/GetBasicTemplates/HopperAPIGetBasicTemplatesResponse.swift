//
//  HopperAPIGetBasicTemplatesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetBasicTemplatesResponse: Codable {
    
    var basicTemplates : [BasicTemplate]?
    
    private enum CodingKeys: String, CodingKey {
        case basicTemplates = "data"
    }
    
}
