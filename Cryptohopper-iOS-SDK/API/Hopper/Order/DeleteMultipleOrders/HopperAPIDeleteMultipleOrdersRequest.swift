//
//  HopperAPIDeleteMultipleOrdersRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation
import UIKit

class HopperAPIDeleteMultipleOrdersRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,orderIds : [Int]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/order")
        addBodyItem(name: "order_ids", value: orderIds)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .DELETE
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
