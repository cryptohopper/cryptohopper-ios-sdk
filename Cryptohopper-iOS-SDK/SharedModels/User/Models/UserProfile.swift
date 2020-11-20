//
//  UserProfile.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserProfile : Codable {
    
    var id : String?
    var name : String?
    var username : String?
    var email : String?
    var website : String?
    var region : String?
    var postalCode : String?
    var phone : String?
    var country : String?
    var city : String?
    var addressOne : String?
    var addressTwo : String?
    var enableTwoFactorAuth : Bool?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case username = "username"
        case email = "email"
        case website = "website"
        case region = "region"
        case postalCode = "postal_code"
        case phone = "phone"
        case country = "country"
        case city = "city"
        case addressOne = "address1"
        case addressTwo = "address2"
        case enableTwoFactorAuth = "enabled_2fa"
    }
    
}
