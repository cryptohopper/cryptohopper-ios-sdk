//
//  MarketItem.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class MarketItem : Codable {
    
    var id : String?
    var itemType : String?
    var logo : String?
    var name : String?
    var description : String?
    var totalVotes : String?
    var rating : String?
    var sales : Int?
    var price : Double?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case itemType = "item_type"
        case logo = "logo"
        case name = "name"
        case description = "description"
        case totalVotes = "total_votes"
        case rating = "rating"
        case sales = "sales"
        case price = "price"
    }
}
