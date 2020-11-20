//
//  HopperAPILoadMarketTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPILoadMarketTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId : Int,hopperId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/market/\(templateId)/load/\(hopperId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
