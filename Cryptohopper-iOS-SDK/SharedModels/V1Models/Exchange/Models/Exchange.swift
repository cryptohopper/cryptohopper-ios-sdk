//
//  Exchange.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Exchange : Codable {
    
    //Basic
    public private(set) var exchangeKey : String?
    public private(set) var name : String?
    
    //Details
    public private(set) var description : String?
    public private(set) var logo : String?
    public private(set) var websiteLink : String?
    public private(set) var signupLink : String?
    public private(set) var tutorialLink : String?
    public private(set) var apiLink : String?
    public private(set) var extraLinks : [[String:String]]?
    public private(set) var baseCurrencies : String?
    public private(set) var defaultBaseCurrency : String?
    public private(set) var apiConfigFields : [String]?
    public private(set) var optionalConfigFields : [String]?
    public private(set) var exchangeStatus : String?
    public private(set) var uptimeOneHour : String?
    public private(set) var uptimeOneWeek : String?
    public private(set) var uptimeOneMonth : String?
    public private(set) var preiumPartner : String?
    public private(set) var maintence : String?
    public private(set) var maintanceMessage : String?
    
    private enum CodingKeys: String, CodingKey {
        case exchangeKey = "exchange_key"
        case name = "name"
        case description = "description"
        case logo = "logo"
        case websiteLink = "website_link"
        case signupLink = "signup_link"
        case tutorialLink = "tutorial_link"
        case apiLink = "api_link"
        case extraLinks = "extra_links"
        case baseCurrencies = "base_currencies"
        case defaultBaseCurrency = "default_base_cur"
        case apiConfigFields = "api_config_fields"
        case optionalConfigFields = "optional_config_fields"
        case exchangeStatus = "exchange_status"
        case uptimeOneHour = "uptime_1h"
        case uptimeOneWeek = "uptime_1w"
        case uptimeOneMonth = "uptime_1m"
        case preiumPartner = "premium_partner"
        case maintence = "maintenance"
        case maintanceMessage = "maintenance_message"
    }
    
}
