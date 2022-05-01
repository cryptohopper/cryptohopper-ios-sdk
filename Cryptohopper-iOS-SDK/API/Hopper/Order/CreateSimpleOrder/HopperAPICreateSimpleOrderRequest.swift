//
//  HopperAPICreateSimpleOrderRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 30/04/2022.
//

import Foundation
import UIKit

class HopperAPICreateSimpleOrderRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,orderType : String,marketOrder : Int,coin : String,price : Double,amount : Double) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/order")
        
        addBodyItem(name: "order_type", value: orderType)
        addBodyItem(name: "market_order", value: marketOrder)
        addBodyItem(name: "coin", value: coin)
        addBodyItem(name: "amount", value: amount)
        //TODO FIX
//        if(marketOrder != 1){
//            addBodyItem(name: "price", value: price)
//        }
        addBodyItem(name: "price", value: price)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
