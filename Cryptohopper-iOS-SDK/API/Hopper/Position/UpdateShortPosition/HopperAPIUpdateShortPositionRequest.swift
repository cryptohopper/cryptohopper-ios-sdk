//
//  HopperAPIUpdateMultiplePositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation
import UIKit

class HopperAPIUpdateShortPositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , shortId:Int , takeProfit : Double,trailingStopLoss : Int, trailingStopLossPercentage : Double,trailingStopLossArm : Double,autoCloseTime : String,autoRemoveTime : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/setshortsetting")

        addBodyItem(name: "take_profit", value: takeProfit)
        
        addBodyItem(name: "trailing_enabled", value: trailingStopLoss)
        if(trailingStopLoss == 1){
            addBodyItem(name: "trailing_percentage", value: trailingStopLossPercentage)
            addBodyItem(name: "trailing_arm_percentage", value: trailingStopLossArm)
        }
        
        addBodyItem(name: "auto_close_time", value: autoCloseTime)
        addBodyItem(name: "auto_remove_time", value: autoRemoveTime)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
