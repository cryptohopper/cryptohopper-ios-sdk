//
//  HopperConfigAPIConfig.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public class HopperConfigAPIConfig : Codable {
    
    public var apiKey : String?
    public var apiSecret : String?
    public var krakenExtraKey : String?
    public var krakenPrivateExtraKey : String?
    public var gdaxApiPassphrase : String?
    public var gdaxPostOnly : String?
    
    public init(){}
    
    private enum CodingKeys: String, CodingKey {
        case apiKey = "api_key"
        case apiSecret = "api_secret"
        case krakenExtraKey = "kraken_extra_key"
        case krakenPrivateExtraKey = "kraken_private_extra_key"
        case gdaxApiPassphrase = "gdax_api_passphrase"
        case gdaxPostOnly = "gdax_post_only"
    }

}
