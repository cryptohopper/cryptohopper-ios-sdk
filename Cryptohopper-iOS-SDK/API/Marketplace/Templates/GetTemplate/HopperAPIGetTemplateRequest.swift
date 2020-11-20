//
//  HopperAPIGetTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTemplateRequest: HopperAPIRequest<HopperAPIGetTemplateResponse> {
    
    convenience init(templateId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/templates/\(templateId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
