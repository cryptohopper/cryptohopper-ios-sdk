//
//  HopperAPICountryAllowExchangeResponse.swift
//  Pods
//
//  Created by Can Erten on 16/12/2024.
//

import Foundation

public class HopperAPICountryAllowExchangeResponse: Codable {
    
    var data : HopperAPICountryAllowExchangeResult?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPICountryAllowExchangeResult: Codable {
    
    var countrySettings : [String:HopperAPICountryAllowExchangeSetting]?
    var ipCountry : String?
    
    private enum CodingKeys: String, CodingKey {
        case countrySettings = "country_settings"
        case ipCountry = "ip_country"
    }
    
}

public class HopperAPICountryAllowExchangeSetting: Codable {
    
    var nationality : [String]?
    var residence : [String]?
    
    private enum CodingKeys: String, CodingKey {
        case nationality = "nationality"
        case residence = "residence"
    }
    
}
