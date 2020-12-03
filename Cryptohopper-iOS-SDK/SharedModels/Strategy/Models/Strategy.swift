//
//  Strategy.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Strategy : Codable {
    
    public private(set) var id : String?
    public private(set) var type : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var logo : String?
    public private(set) var createdDate : String?
    public private(set) var marketId : String?
    public private(set) var image : String?
    public private(set) var hiddenConfiguration : String?
    public private(set) var link : String?
    
    public private(set) var itemId : String?
    public private(set) var totalVotes : String?
    public private(set) var rating : String?
    public private(set) var sales : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case name = "name"
        case description = "description"
        case logo = "logo"
        case createdDate = "created_date"
        case marketId = "market_id"
        case image = "image"
        case hiddenConfiguration = "hidden_configuration"
        case link = "link"
        case itemId = "item_id"
        case totalVotes = "total_votes"
        case rating = "rating"
        case sales = "sales"
    }
    
}
