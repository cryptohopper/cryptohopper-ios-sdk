//
//  HopperAPIGetOneConfigPoolRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation
import UIKit

class HopperAPIGetOneConfigPoolRequest: HopperAPIRequest<HopperAPIGetOneConfigPoolResponse> {
    
    convenience init(hopperId : String,poolId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/config/pool/\(poolId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
