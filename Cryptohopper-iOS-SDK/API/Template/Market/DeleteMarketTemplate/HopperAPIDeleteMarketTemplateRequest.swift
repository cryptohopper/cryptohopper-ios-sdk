//
//  HopperAPIDeleteMarketTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIDeleteMarketTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/market/\(templateId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
