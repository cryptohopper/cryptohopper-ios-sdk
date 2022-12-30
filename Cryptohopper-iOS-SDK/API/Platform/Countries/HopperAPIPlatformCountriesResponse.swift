//
//  HopperAPIPlatformCountriesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 28/12/2022.
//

import Foundation

public class HopperAPIPlatformCountriesResponse: Codable {
    
    var data : HopperAPICountriesResult?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPICountriesResult: Codable {
    
    var countries : [String:String]?
    var ipCountry : String?
    
    private enum CodingKeys: String, CodingKey {
        case countries = "countries"
        case ipCountry = "ip_country"
    }
    
}
