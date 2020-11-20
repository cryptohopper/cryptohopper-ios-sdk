//
//  HopperAPIUpdateReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIUpdateReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(reviewId: Int,reviewName : String,review : String ,rating:Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/review/\(reviewId)")
        addBodyItem(name: "review_name", value: reviewName)
        addBodyItem(name: "review", value: review)
        addBodyItem(name: "rating", value: rating)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

