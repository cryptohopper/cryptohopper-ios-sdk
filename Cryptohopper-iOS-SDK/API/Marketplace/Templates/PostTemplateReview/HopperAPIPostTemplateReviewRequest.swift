//
//  HopperAPIPostTemplateReviewRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIPostTemplateReviewRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId: Int,reviewName : String,review : String ,rating:Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/templates/\(templateId)/review")
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
