//
//  HopperAPIGetExchangeWhitelistIPResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 03/01/2023.
//

import Foundation

class HopperAPIGetExchangeWhitelistIPResponse: Codable {
    
    var data : CHIPWhitelist?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class CHIPWhitelist : Codable {
    
    var ips : String
    
    private enum CodingKeys : String, CodingKey {
        case ips = "ip_addresses"
    }
    
}
