//
//  UserProfile.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserProfile : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var username : String?
    public private(set) var email : String?
    public private(set) var website : String?
    public private(set) var region : String?
    public private(set) var postalCode : String?
    public private(set) var phone : String?
    public private(set) var country : String?
    public private(set) var city : String?
    public private(set) var addressOne : String?
    public private(set) var addressTwo : String?
    public private(set) var enableTwoFactorAuth : Bool?
    public private(set) var userHasTrial : String?
    
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
        case userHasTrial = "user_has_trial"
    }
    
}
