//
//  HopperAPIDCAResetCoinRequest.swift
//  Pods
//
//  Created by Can Erten on 24/02/2025.
//

import Foundation
import UIKit

class HopperAPIDCAResetCoinRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId: String, coin: String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca/reset")
        self.addBodyItem(name: "coin", value: coin)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
