//
//  HopperAPIEditStartBalanceRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 06/01/2021.
//


import Foundation
import UIKit

class HopperAPIEditStartBalanceRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,balance : Double) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/startbalance")
        self.addBodyItem(name: "start_balance", value: balance)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
