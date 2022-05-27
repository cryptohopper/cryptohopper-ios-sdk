//
//  HopperAPIV2CheckUsernameRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2CheckUsernameRequest: HopperAPIRequest<HopperAPIV2CheckUsernameResponse?> {
    
    convenience init(username : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user/check",isV2Endpoint: true)
        addQueryItem(name: "username", value: username)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
