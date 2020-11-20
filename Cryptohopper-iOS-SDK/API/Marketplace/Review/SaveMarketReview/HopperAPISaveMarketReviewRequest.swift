//
//  HopperAPISaveMarketReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPISaveMarketReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(marketplaceId : Int,marketItemType : String,reviewName : String,review : String ,rating:Int , replyTo : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/savereview")
        addBodyItem(name: "marketplace_item_id", value: marketplaceId)
        addBodyItem(name: "market_item_type", value: marketItemType)
        addBodyItem(name: "review_name", value: reviewName)
        addBodyItem(name: "review", value: review)
        addBodyItem(name: "rating", value: rating)
        addBodyItem(name: "reply_to", value: replyTo)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
