//
//  Strategy.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Strategy : Codable {
    
    var id : String?
    var type : String?
    var name : String?
    var description : String?
    var logo : String?
    var createdDate : String?
    var marketId : String?
    var image : String?
    var hiddenConfiguration : String?
    var link : String?
    
    var itemId : String?
    var totalVotes : String?
    var rating : String?
    var sales : String?
    
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
