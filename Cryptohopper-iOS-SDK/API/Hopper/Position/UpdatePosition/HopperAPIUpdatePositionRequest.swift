//
//  HopperAPIUpdatePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPIUpdatePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId:Int,values : [String:Any]) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/setpositionsetting")
        
        addBodyItem(name: "position_ids", value: [positionId])
        
//        var settings = [String:Any]()
//
//        settings["take_profit"] = takeProfit
//
//        settings["stop_loss_enabled"] = stopLoss
//        if(stopLoss == 1){
//            settings["stop_loss_percentage"] = stopLossPercentage
//        }else{
//            settings["stop_loss_percentage"] = 0.0
//        }
//
//        settings["trailing_enabled"] = trailingStopLoss
//        if(trailingStopLoss == 1){
//            settings["trailing_percentage"] = trailingStopLossPercentage
//            settings["trailing_arm_percentage"] = trailingStopLossArm
//        }else{
//            settings["trailing_percentage"] = 0.0
//            settings["trailing_arm_percentage"] = 0.0
//        }
//
//        if(autoClose == 1){
//            settings["auto_close_time"] = Double(autoCloseTime) ?? 0.0
//        }else{
//            settings["auto_close_time"] = 0
//        }
        
        addBodyItem(name: "setting", value: values)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
