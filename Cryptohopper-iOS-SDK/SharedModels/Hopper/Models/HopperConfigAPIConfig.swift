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
    public var apiPassphrase : String?
    public var extraApiKey : String?
    public var extraApiSecret : String?
    public var gdaxPostOnly : String?
    
    public init(){}
    
    private enum CodingKeys: String, CodingKey {
        case apiKey = "api_key"
        case apiSecret = "api_secret"
        case apiPassphrase = "api_passphrase"
        case extraApiKey = "extra_api_key"
        case extraApiSecret = "extra_api_secret"
        case gdaxPostOnly = "gdax_post_only"
    }

}
