//
//  HopperAPISaveTemplateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPISaveTemplateRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : Int,saveAs : Int,name : String,description : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/template/save")
        addBodyItem(name: "save_as", value: saveAs)
        addBodyItem(name: "name", value: name)
        addBodyItem(name: "description", value: description)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
