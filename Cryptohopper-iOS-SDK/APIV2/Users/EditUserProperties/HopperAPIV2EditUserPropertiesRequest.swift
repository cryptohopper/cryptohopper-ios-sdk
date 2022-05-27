//
//  HopperAPIV2EditUserPropertiesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2EditUserPropertiesRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(properties : [String:Any]) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user",isV2Endpoint: true)
        for p in properties {
            addBodyItem(name: p.key, value: p.value)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PUT
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
