//
//  HopperAPIGetPlatformCountriesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 28/12/2022.
//

import Foundation
import UIKit

class HopperAPIGetPlatformCountriesRequest: HopperAPIRequest<HopperAPIPlatformCountriesResponse> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/platform/countries")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
