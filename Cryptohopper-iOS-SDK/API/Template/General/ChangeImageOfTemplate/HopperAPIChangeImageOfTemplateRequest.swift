//
//  HopperAPIChangeImageOfTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIChangeImageOfTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(templateId : Int,image : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/template/\(templateId)/changeimage")
        addBodyItem(name: "image", value: image)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
