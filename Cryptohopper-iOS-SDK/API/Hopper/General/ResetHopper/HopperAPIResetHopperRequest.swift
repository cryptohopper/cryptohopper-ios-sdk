//
//  HopperAPIResetHopperRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIResetHopperRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/reset")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
