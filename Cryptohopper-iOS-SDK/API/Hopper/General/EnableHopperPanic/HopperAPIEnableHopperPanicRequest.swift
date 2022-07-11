//
//  HopperAPIEnableHopperPanicRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation
import UIKit

class HopperAPIEnableHopperPanicRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,useMarketOrder : Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/panicbutton")
        if(useMarketOrder){
            self.addQueryItem(name: "market_orders", value: "1")
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
