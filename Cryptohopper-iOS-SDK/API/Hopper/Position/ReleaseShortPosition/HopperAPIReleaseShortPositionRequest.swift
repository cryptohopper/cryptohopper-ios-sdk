//
//  HopperAPIReleaseShortPositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/10/2021.
//

import Foundation
import UIKit

class HopperAPIReleaseShortPositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/short/release/\(positionId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
