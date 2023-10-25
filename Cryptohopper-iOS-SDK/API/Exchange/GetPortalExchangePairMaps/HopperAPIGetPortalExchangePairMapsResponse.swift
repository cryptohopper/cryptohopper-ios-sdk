//
//  HopperAPIGetPortalExchangePairMapsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 25/10/2023.
//

import Foundation

class HopperAPIGetPortalExchangePairMapsResponse: Codable {
    
    var maps : [String:[String:String]]?
    
    private enum CodingKeys: String, CodingKey {
        case maps = "data"
    }
    
}
