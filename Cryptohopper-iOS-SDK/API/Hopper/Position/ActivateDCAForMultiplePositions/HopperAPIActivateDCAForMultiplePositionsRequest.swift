//
//  HopperAPIActivateDCAForMultiplePositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIActivateDCAForMultiplePositionsRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionIds : [Int] , marketOrder : Int ,trailingBuy : Int ,trailingBuyPercentage : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca")
        addBodyItem(name: "position_ids", value: positionIds)
        addBodyItem(name: "market_order", value: marketOrder)
        addBodyItem(name: "trailing_buy", value: trailingBuy)
        addBodyItem(name: "trailing_buy_percentage", value: trailingBuyPercentage)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

