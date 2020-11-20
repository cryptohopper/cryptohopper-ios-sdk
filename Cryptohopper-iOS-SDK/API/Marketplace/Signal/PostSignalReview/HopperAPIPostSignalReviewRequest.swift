//
//  HopperAPIPostSignalReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIPostSignalReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(signalId: Int,reviewName : String,review : String ,rating:Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/signals/\(signalId)/review")
        addBodyItem(name: "review_name", value: reviewName)
        addBodyItem(name: "review", value: review)
        addBodyItem(name: "rating", value: rating)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

