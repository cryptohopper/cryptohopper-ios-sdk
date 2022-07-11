//
//  HopperAPIStopHopperWithoutSellingRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 11/07/2022.
//

import Foundation
import UIKit

class HopperAPIStopHopperWithoutSellingRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/stop")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
