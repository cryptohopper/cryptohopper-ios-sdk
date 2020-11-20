//
//  MarketReview.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketReview : Codable {
    
    var id : Int?
    var itemId : Int?
    var itemType : String?
    var replyTo : String?
    var reviewName : String?
    var review : String?
    var rating : Double?
    var createdDate : Date?
    var updatedDate : Date?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case itemId = "item_id"
        case itemType = "item_type"
        case replyTo = "reply_to"
        case reviewName = "review_name"
        case review = "review"
        case rating = "rating"
        case createdDate = "created_date"
        case updatedDate = "updated_date"
    }
}
