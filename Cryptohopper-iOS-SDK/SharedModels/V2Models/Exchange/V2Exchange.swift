//
//  V2Exchange.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation

public class V2Exchange : Codable {
    
    public private(set) var id : Int?
    public private(set) var key : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var signupLink : String?
    public private(set) var tutorialLink : String?
    public private(set) var defaultQuoteCurrency : String?
    public private(set) var totalHoppers : Int?
    public private(set) var totalMarkets : Int?
    public private(set) var totalTrades : Int?
    public private(set) var uptimeLastHour : Double?
    public private(set) var uptimeLastWeek : Double?
    public private(set) var uptimeLastMonth : Double?
    public private(set) var createdAt : String?
    public private(set) var updatedAt : String?
    public private(set) var ordering : Int?
    public private(set) var premiumPartner : Bool?
    public private(set) var exchangeStatus : Bool?
    public private(set) var availableSoon : Bool?
    public private(set) var isBeta : Bool?
    public private(set) var isCeta : Bool?
    public private(set) var status : Bool?
    public private(set) var display : Bool?
    public private(set) var maintenance : Bool?
    public private(set) var margin : Bool?
    public private(set) var extraLinks : [[String:String]]?
    public private(set) var quoteCurrencies : [String]?
    public private(set) var images : [String:String]?
    public private(set) var apiConfigFields : [String]?
    public private(set) var optionalConfigFields : [String]?
    public private(set) var fastApiHook : String?
    public private(set) var isIpWhitelistAvailable : Bool?
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case key = "key"
        case name = "name"
        case description = "description"
        case signupLink = "signupLink"
        case tutorialLink = "tutorialLink"
        case defaultQuoteCurrency = "defaultQuoteCurrency"
        case totalHoppers = "totalHoppers"
        case totalMarkets = "totalMarkets"
        case totalTrades = "totalTrades"
        case uptimeLastHour = "uptimeLastHour"
        case uptimeLastWeek = "uptimeLastWeek"
        case uptimeLastMonth = "uptimeLastMonth"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case ordering = "ordering"
        case premiumPartner = "premiumPartner"
        case exchangeStatus = "exchangeStatus"
        case availableSoon = "availableSoon"
        case isBeta = "isBeta"
        case isCeta = "isCeta"
        case status = "status"
        case display = "display"
        case maintenance = "maintenance"
        case margin = "margin"
        case extraLinks = "extraLinks"
        case quoteCurrencies = "quoteCurrencies"
        case images = "images"
        case apiConfigFields = "apiConfigFields"
        case optionalConfigFields = "optionalConfigFields"
        case fastApiHook = "fastApiHook"
        case isIpWhitelistAvailable = "ip_whitelist_available"
    }
    
}
