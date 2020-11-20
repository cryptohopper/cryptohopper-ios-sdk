//
//  HopperAPILoadTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPILoadTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId : Int,hopperId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/\(templateId)/load/\(hopperId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
