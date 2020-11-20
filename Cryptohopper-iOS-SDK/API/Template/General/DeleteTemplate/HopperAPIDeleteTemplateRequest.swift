//
//  HopperAPIDeleteTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIDeleteTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/\(templateId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
