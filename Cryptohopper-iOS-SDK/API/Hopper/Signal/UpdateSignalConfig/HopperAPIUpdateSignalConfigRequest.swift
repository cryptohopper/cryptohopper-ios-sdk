//
//  HopperAPIUpdateSignalConfigRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIUpdateSignalConfigRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,signalId : Int,config : [String:Any]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/signal/\(signalId)")
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
