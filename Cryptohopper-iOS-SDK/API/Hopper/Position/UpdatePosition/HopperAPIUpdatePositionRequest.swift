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
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/\(positionId)/update")
        addBodyItem(name: "take_profit", value: takeProfit)
        addBodyItem(name: "stop_loss", value: stopLoss)
        addBodyItem(name: "stop_loss_percentage", value: stopLossPercentage)
        addBodyItem(name: "trailing_stop_loss", value: trailingStopLoss)
        addBodyItem(name: "trailing_stop_loss_percentage", value: trailingStopLossPercentage)
        addBodyItem(name: "trailing_stop_loss_arm", value: trailingStopLossArm)
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
