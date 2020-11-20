//
//  HopperAPIMostTradedCurrencyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPIHopperMostTradedCurrencyRequest: HopperAPIRequest<HopperAPIHopperMostTradedCurrencyResponse> {
    
    convenience init(hopperId : String ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/mosttraded")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
