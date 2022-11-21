//
//  HopperAPIAuthDeviceGetListRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 21/11/2022.
//

import Foundation
import UIKit

class HopperAPIAuthDeviceGetListRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path:"/device/list")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
