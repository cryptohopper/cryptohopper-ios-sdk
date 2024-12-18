//
//  HopperAPIGetCountryAllowExchangeRequest.swift
//  Pods
//
//  Created by Can Erten on 16/12/2024.
//

import Foundation
import UIKit

class HopperAPIGetCountryAllowExchangeRequest: HopperAPIRequest<HopperAPICountryAllowExchangeResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/platform/country_allow_exchange")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
