//
//  HopperAPIGetOneMarketTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetOneMarketTemplateRequest: HopperAPIRequest<HopperAPIGetOneMarketTemplateResponse> {
    
    convenience init(templateId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/market/\(templateId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
