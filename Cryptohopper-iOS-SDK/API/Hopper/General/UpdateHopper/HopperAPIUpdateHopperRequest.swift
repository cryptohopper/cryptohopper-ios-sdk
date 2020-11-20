//
//  HopperAPIUpdateHopperRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPIUpdateHopperRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String ,name : String?, enabled : Int?, apiConfig : HopperConfigAPIConfig? ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)")
        if(name != nil){
            addBodyItem(name: "name", value: name!)
        }
        if(enabled != nil){
            addBodyItem(name: "enabled", value: enabled!)
        }
        if(apiConfig != nil){
            addBodyItem(name: "api_config", value: apiConfig!)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
