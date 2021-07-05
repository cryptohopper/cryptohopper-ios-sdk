//
//  HopperAPIMoveReservedPositionToOpenRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/07/2021.
//

import Foundation
import UIKit

class HopperAPIMoveReservedPositionToOpenRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/reserved/\(positionId)/movetopositions")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
