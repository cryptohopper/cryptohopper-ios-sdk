//
//  HopperAPIUpdatePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPIUpdatePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId:Int,takeProfit : Int,stopLoss : Int,stopLossPercentage : Int,trailingStopLoss : Int, trailingStopLossPercentage : Int,trailingStopLossArm : Int,autoClose : Int,autoCloseTime : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/setpositionsetting")
        
        addBodyItem(name: "take_profit", value: takeProfit)
        
        addBodyItem(name: "stop_loss_enabled", value: stopLoss)
        if(stopLoss == 1){
            addBodyItem(name: "stop_loss_percentage", value: stopLossPercentage)
        }
        
        addBodyItem(name: "trailing_enabled", value: trailingStopLoss)
        if(trailingStopLoss == 1){
            addBodyItem(name: "trailing_percentage", value: trailingStopLossPercentage)
            addBodyItem(name: "trailing_arm_percentage", value: trailingStopLossArm)
        }
        
        addBodyItem(name: "auto_close", value: autoClose)
        addBodyItem(name: "auto_close_time", value: autoCloseTime)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
