//
//  HopperAPIDCAOnePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 02/08/2021.
//

import Foundation
import UIKit

class HopperAPIDCAOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca/\(positionId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
