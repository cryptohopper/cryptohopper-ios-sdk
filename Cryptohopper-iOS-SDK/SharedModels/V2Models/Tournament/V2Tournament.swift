//
//  V2Tournament.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation

public class V2Tournament : Codable {
    
    public private(set) var id : Int?
    public private(set) var tournamentType : String?
    public private(set) var papertradingType : Int?
    public private(set) var name : String?
    public private(set) var logo : String?
    public private(set) var feature : String?
    public private(set) var description : String?
    public private(set) var tournamentTerms : String?
    public private(set) var links : String?
    public private(set) var config : String?
    public private(set) var exchange : String?
    public private(set) var quote : String?
    public private(set) var base : String?
    public private(set) var startDateJoin : String?
    public private(set) var endDateJoin : String?
    public private(set) var startDate : String?
    public private(set) var endDate : String?
    public private(set) var updated : String?
    public private(set) var created : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "Id"
        case tournamentType = "TournamentType"
        case papertradingType = "PapertradingType"
        case name = "Name"
        case logo = "Logo"
        case feature = "Feature"
        case description = "Description"
        case tournamentTerms = "TournamentTerms"
        case links = "Links"
        case config = "Config"
        case exchange = "Exchange"
        case quote = "Quote"
        case base = "Base"
        case startDateJoin = "StartDateJoin"
        case endDateJoin = "EndDateJoin"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case updated = "Updated"
        case created = "Created"
    }
    
}
