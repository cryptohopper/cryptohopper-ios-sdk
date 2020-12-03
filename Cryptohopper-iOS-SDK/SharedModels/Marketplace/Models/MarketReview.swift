//
//  MarketReview.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketReview : Codable {
    
    public private(set) var id : Int?
    public private(set) var itemId : Int?
    public private(set) var itemType : String?
    public private(set) var replyTo : String?
    public private(set) var reviewName : String?
    public private(set) var review : String?
    public private(set) var rating : Double?
    public private(set) var createdDate : Date?
    public private(set) var updatedDate : Date?
    
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
