//
//  HopperAPIAuthDeviceWithCodeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 17/11/2022.
//

import Foundation
import UIKit

class HopperAPIAuthDeviceWithCodeRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(code : String) {
        self.init()
        self.changeUrlPath(path:"/v1" + "/device/authorize")
        addQueryItem(name: "code", value: code)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
