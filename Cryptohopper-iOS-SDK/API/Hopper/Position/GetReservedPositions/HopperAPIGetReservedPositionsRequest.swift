//
//  HopperAPIGetReservedPositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIGetReservedPositionsRequest: HopperAPIRequest<HopperAPIGetReservedPositionsResponse> {
    
    convenience init(hopperId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/reserved")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
