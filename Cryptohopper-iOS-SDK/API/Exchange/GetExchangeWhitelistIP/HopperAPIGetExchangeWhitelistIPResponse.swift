//
//  HopperAPIGetExchangeWhitelistIPResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 03/01/2023.
//

import Foundation

public class HopperAPIGetExchangeWhitelistIPResponse: Codable {
    
    var data : CHIPWhitelist?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class CHIPWhitelist : Codable {
    
    public private(set) var ips : String?
    public private(set) var showIpAddresses : String?
    public private(set) var copyIPAddresses : String?
    
    private enum CodingKeys : String, CodingKey {
        case ips = "ip_addresses"
        case showIpAddresses = "show_ip_addresses"
        case copyIPAddresses = "copy_ip_addresses"
    }
    
}
