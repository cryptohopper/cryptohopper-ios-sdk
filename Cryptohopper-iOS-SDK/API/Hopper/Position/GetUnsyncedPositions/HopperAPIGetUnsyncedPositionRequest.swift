//
//  HopperAPIGetUnsyncedPositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/01/2021.
//

import Foundation
import UIKit

class HopperAPIGetUnsyncedPositionRequest: HopperAPIRequest<HopperAPIGetUnsyncedPositionResponse> {
    
    convenience init(hopperId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/sync")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
