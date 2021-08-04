//
//  HopperAPICreateHopperRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPICreateHopperRequest: HopperAPIRequest<HopperAPICreateHopperResponse> {
    
    convenience init(name : String, enabled : Int?, templateId : String?, apiConfig : [String:Any]?, config : [String:Any]? ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper")
        addBodyItem(name: "name", value: name)
        if(enabled != nil){
            addBodyItem(name: "enabled", value: enabled!)
        }
        if(templateId != nil){
            addBodyItem(name: "template_id", value: templateId!)
        }
        if(apiConfig != nil){
            addBodyItem(name: "api_config", value: apiConfig!)
        }
        if(config != nil){
            addBodyItem(name: "config", value: config!)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
