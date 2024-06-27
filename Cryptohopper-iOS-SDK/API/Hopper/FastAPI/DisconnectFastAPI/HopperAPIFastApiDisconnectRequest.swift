//
//  HopperAPIFastApiDisconnectRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 12/06/2024.
//

import Foundation
import UIKit

class HopperAPIFastApiDisconnectRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/fastapi")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
