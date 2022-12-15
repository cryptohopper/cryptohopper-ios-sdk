//
//  HopperAPISellOnePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPISellOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionId : Int,marketOrder : Bool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/sell/\(positionId)")
        if(marketOrder){
            self.addBodyItem(name: "market_order", value: 1)
        }else{
            self.addBodyItem(name: "market_order", value: 0)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
