//
//  HopperAPIV2GetAllCurrenciesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetAllCurrenciesRequest: HopperAPIRequest<[V2Currency]?> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/currencies/list",isV2Endpoint: true)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
