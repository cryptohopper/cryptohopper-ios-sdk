//
//  HopperAPIV2EditUserPropertiesRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2EditUserPropertiesRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(name: String, countryISOCode : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user",isV2Endpoint: true)
        addBodyItem(name: "name", value: name)
        addBodyItem(name: "countryIsoCode", value: countryISOCode)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PUT
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
