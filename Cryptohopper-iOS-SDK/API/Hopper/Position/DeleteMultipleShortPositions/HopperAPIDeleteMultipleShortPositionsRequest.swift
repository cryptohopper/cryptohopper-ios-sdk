//
//  HopperAPIDeleteMultipleShortPositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation
import UIKit

class HopperAPIDeleteMultipleShortPositionsRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionIds : [Int]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/short/remove")
        addBodyItem(name: "position_ids", value: positionIds)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
