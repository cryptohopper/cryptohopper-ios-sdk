//
//  HopperAPIDisableHopperBuyingRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPIDisableHopperBuyingRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/disable/buying")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
