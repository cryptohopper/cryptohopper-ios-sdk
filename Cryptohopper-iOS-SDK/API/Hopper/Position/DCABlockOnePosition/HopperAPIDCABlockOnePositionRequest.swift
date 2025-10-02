//
//  HopperAPIDCABlockOnePositionRequest.swift
//  Pods
//
//  Created by Can Erten on 24/02/2025.
//

import Foundation
import UIKit

class HopperAPIDCABlockOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId: String, positionId: Int, block: Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca/\(positionId)/block")
        if block {
            self.addBodyItem(name: "block", value: 1)
        } else {
            self.addBodyItem(name: "block", value: 0)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
