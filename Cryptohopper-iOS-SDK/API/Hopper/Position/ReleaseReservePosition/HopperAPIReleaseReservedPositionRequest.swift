//
//  HopperAPIReleaseReservedPositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 08/07/2021.
//

import Foundation
import UIKit

class HopperAPIReleaseReservedPositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/reserved/\(positionId)/release")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
