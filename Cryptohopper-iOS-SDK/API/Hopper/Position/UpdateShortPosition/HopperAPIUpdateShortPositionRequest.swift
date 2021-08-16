//
//  HopperAPIUpdateMultiplePositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation
import UIKit

class HopperAPIUpdateShortPositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , shortId:Int , takeProfit : Double,stopLoss : Int,stopLossPercentage : Double,trailingStopLoss : Int, trailingStopLossPercentage : Double,trailingStopLossArm : Double,autoCloseTime : String,autoRemoveTime : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/setshortsetting")
        
        addBodyItem(name: "position_ids", value: [shortId])
        
        var settings = [String:Any]()
        
        settings["take_profit"] = takeProfit
        
        settings["stop_loss_enabled"] = stopLoss
        if(stopLoss == 1){
            settings["stop_loss_percentage"] = stopLossPercentage
        }else{
            settings["stop_loss_percentage"] = 0.0
        }
        
        settings["trailing_enabled"] = trailingStopLoss
        if(trailingStopLoss == 1){
            settings["trailing_percentage"] = trailingStopLossPercentage
            settings["trailing_arm_percentage"] = trailingStopLossArm
        }else{
            settings["trailing_percentage"] = 0.0
            settings["trailing_arm_percentage"] = 0.0
        }
        
        settings["auto_close_time"] = autoCloseTime
        settings["auto_remove_time"] = autoRemoveTime
        
        addBodyItem(name: "setting", value: settings)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
