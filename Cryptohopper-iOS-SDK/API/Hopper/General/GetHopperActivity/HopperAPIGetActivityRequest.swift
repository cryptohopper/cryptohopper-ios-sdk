//
//  HopperAPIGetActivityRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 21/02/2022.
//

import Foundation
import UIKit

class HopperAPIGetActivityRequest: HopperAPIRequest<HopperAPIGetActivityResponse> {
    
    convenience init(hopperId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/activity")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
