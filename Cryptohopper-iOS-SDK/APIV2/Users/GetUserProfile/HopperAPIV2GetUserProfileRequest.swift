//
//  HopperAPIV2GetUserProfileRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetUserProfileRequest: HopperAPIRequest<V2User?> {
    
    convenience init(_ data : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user",isV2Endpoint: true)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
