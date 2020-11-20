//
//  HopperAPIUpdateStrategyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIUpdateStrategyRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(strategyId : Int,name : String,description : String,image : String,minBuys : Int,minSells : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/strategy/\(strategyId)")
        addBodyItem(name: "name", value: name)
        addBodyItem(name: "description", value: description)
        addBodyItem(name: "image", value: image)
        addBodyItem(name: "min_buys", value: minBuys)
        addBodyItem(name: "min_sells", value: minSells)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
