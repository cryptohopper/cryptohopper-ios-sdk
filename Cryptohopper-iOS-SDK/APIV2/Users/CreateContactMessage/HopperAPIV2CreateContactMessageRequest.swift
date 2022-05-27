//
//  HopperAPIV2CreateContactMessageRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2CreateContactMessageRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(email : String,message : String, name : String, subject : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user/contact",isV2Endpoint: true)
        addBodyItem(name: "email", value: email)
        addBodyItem(name: "message", value: message)
        addBodyItem(name: "name", value: name)
        addBodyItem(name: "subject", value: subject)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
