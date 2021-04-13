//
//  HopperAPIUpdateConfigRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation
import UIKit

class HopperAPIUpdateConfigRequest: HopperAPIRequest<HopperAPIUpdateConfigResponse> {
    
    convenience init(hopperId : String,config : [String:Any]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/config")
        var arr = [String:Any]()
        for c in config {
            arr[c.key] = c.value
        }
        addBodyItem(name: "config", value: arr)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
