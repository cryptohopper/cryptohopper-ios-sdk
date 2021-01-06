//
//  HopperAPISyncPositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/01/2021.
//

import Foundation
import UIKit

class HopperAPISyncPositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,currency : String,amount: Double,rate : Double) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/sync")
        self.addBodyItem(name: "currency", value: currency)
        self.addBodyItem(name: "amount", value: amount)
        self.addBodyItem(name: "rate", value: rate)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
