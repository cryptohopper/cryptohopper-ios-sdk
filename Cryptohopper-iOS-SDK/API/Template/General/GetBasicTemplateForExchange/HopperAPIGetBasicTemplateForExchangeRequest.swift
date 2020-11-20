//
//  HopperAPIGetBasicTemplateForExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetBasicTemplateForExchangeRequest: HopperAPIRequest<HopperAPIGetBasicTemplateForExchangeResponse> {
    
    convenience init(exchange : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/basic/\(exchange)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
