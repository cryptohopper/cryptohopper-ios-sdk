//
//  HopperAPIDeleteReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIDeleteReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(reviewId: Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/review/\(reviewId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

