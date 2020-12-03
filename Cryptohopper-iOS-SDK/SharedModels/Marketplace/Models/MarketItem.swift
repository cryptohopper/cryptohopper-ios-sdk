//
//  MarketItem.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketItem : Codable {
    
    public private(set) var id : String?
    public private(set) var itemType : String?
    public private(set) var logo : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var totalVotes : String?
    public private(set) var rating : String?
    public private(set) var sales : Int?
    public private(set) var price : Double?
    
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
