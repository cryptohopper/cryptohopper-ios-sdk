//
//  HopperAPIV2GetAllBuiltinStrategiesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetAllBuiltinStrategiesRequest: HopperAPIRequest<[V2Strategy]?> {
    
    convenience init(_ data : String?) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/strategy/list",isV2Endpoint: true)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
