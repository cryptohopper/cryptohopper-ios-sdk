//
//  HopperAPIPositionsTakeProfitRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPIPositionsTakeProfitRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionIds : [Int],percentageProfit : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/settakeprofit")
        addBodyItem(name: "position_ids", value: positionIds)
        addBodyItem(name: "percentage_profit", value: percentageProfit)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
