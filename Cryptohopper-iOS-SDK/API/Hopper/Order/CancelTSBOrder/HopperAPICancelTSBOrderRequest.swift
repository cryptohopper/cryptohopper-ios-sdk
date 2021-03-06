//
//  HopperAPICancelTSBOrderRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPICancelTSBOrderRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,orderId : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/order/\(orderId)/tsb")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
