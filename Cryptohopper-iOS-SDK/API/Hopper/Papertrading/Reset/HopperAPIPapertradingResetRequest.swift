//
//  HopperAPIPapertradingResetRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation
import UIKit

class HopperAPIPapertradingResetRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(id : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(id)/papertrading/reset")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
