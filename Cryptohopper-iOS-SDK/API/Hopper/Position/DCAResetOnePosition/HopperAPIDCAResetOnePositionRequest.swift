//
//  HopperAPIDCAResetOnePositionRequest.swift
//  Pods
//
//  Created by Can Erten on 24/02/2025.
//

import Foundation
import UIKit

class HopperAPIDCAResetOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId: String, positionId: Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca/\(positionId)/reset")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
