//
//  HopperConfigAPIConfig.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

public class HopperConfigAPIConfig : Codable {
    
    let apiKey : String?
    let apiSecret : String?
    let krakenExtraKey : String?
    let krakenPrivateExtraKey : String?
    let gdaxApiPassphrase : String?
    let gdaxPostOnly : String?
    
    private enum CodingKeys: String, CodingKey {
        case apiKey = "api_key"
        case apiSecret = "api_secret"
        case krakenExtraKey = "kraken_extra_key"
        case krakenPrivateExtraKey = "kraken_private_extra_key"
        case gdaxApiPassphrase = "gdax_api_passphrase"
        case gdaxPostOnly = "gdax_post_only"
    }

}