//
//  HopperAPICreateOrderRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation
import UIKit

class HopperAPICreateOrderRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,orderType : String,marketOrder : Int,coin : String,price : Double,amount : Double,orderTrigger : String,percentageProfit : Double,trailingBuy : Double , trailingBuyPercentage : Double,stopLossPercentage : Double,trailingStopLossPercentage : Double , trailingArmPercentage : Double) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/order")
        
        addBodyItem(name: "order_type", value: orderType)
        addBodyItem(name: "market_order", value: marketOrder)
        addBodyItem(name: "coin", value: coin)
        addBodyItem(name: "price", value: price)
        addBodyItem(name: "amount", value: amount)
        addBodyItem(name: "order_trigger", value: orderTrigger)
        addBodyItem(name: "pct_profit", value: percentageProfit)
        //addBodyItem(name: "trailing_buy", value: trailingBuy)
        addBodyItem(name: "trailing_buy_pct", value: trailingBuyPercentage)
        addBodyItem(name: "stop_loss_percentage", value: stopLossPercentage)
        addBodyItem(name: "trailing_stop_loss_percentage", value: trailingStopLossPercentage)
        addBodyItem(name: "trailing_arm_percentage", value: trailingArmPercentage)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
