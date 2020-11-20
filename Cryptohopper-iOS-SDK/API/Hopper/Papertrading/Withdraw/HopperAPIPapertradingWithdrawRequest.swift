//
//  HopperAPIPapertradingWithdrawRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation
import UIKit

class HopperAPIPapertradingWithdrawRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(id : String,coin : String,amount : Double ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(id)/papertrading/withdraw")
        addBodyItem(name: "coin", value: coin)
        addBodyItem(name: "amount", value: amount)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
