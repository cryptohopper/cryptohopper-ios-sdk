//
//  MarketReview.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketReview : Codable {
    
    public private(set) var id : String?
    public private(set) var itemId : String?
    public private(set) var itemType : String?
    public private(set) var replyTo : String?
    public private(set) var reviewName : String?
    public private(set) var review : String?
    public private(set) var rating : String?
    public private(set) var createdDate : String?
    public private(set) var updatedDate : String?
    public private(set) var replies : [MarketReviewReply]?
    
    
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
        case replies = "replies"
    }
}

public class MarketReviewReply : Codable {
    
    public private(set) var id : String?
    public private(set) var userId : String?
    public private(set) var replyTo : String?
    public private(set) var reviewName : String?
    public private(set) var review : String?
    public private(set) var rating : String?
    public private(set) var created : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case userId = "user_id"
        case replyTo = "reply_to"
        case reviewName = "review_name"
        case review = "review"
        case rating = "rating"
        case created = "created"
    }
}
