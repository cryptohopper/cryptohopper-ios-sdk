//
//  HopperAPIReplyMarketReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIReplyMarketReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(reviewId : Int ,itemId: Int,itemType : String,reviewName : String ,review:String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/review/\(reviewId)/reply")
        addBodyItem(name: "item_id", value: itemId)
        addBodyItem(name: "item_type", value: itemType)
        addBodyItem(name: "review_name", value: reviewName)
        addBodyItem(name: "review", value: review)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

