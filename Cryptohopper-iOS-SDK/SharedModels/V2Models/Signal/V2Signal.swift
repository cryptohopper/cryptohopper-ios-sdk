//
//  V2Signal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation

public class V2Signal : Codable {
    
    public private(set) var id : Int?
    public private(set) var name : String?
    public private(set) var logo : String?
    public private(set) var description : String?
    public private(set) var createdAt : String?
    public private(set) var updatedAt : String?
    public private(set) var riskLevel : String?
    public private(set) var exchanges : [String]?
    public private(set) var noSubscription : Bool?
    public private(set) var status : Bool?
    public private(set) var deleted : Bool?
    public private(set) var cost : Bool?
    public private(set) var planId : Int?
    public private(set) var links : String?
    public private(set) var availableCoins : [String]?
    public private(set) var subscribersCount : Int?
    public private(set) var resultSumPerct : Double?
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case logo = "logo"
        case description = "description"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case riskLevel = "riskLevel"
        case exchanges = "exchanges"
        case noSubscription = "noSubscription"
        case status = "status"
        case deleted = "deleted"
        case cost = "cost"
        case planId = "planId"
        case links = "links"
        case availableCoins = "availableCoins"
        case subscribersCount = "subscribersCount"
        case resultSumPerct = "resultSumPerct"
    }
    
}
