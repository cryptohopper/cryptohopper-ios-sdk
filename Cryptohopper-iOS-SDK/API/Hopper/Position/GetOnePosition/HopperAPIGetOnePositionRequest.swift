//
//  HopperAPIGetOnePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPIGetOnePositionRequest: HopperAPIRequest<HopperAPIGetOnePositionResponse> {
    
    convenience init(hopperId : String , positionId:Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/\(positionId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
