//
//  HopperAPIHoldMultiplePositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPIHoldMultiplePositionsRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionIds : [Int]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/hold")
        addBodyItem(name: "position_id", value: positionIds)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
