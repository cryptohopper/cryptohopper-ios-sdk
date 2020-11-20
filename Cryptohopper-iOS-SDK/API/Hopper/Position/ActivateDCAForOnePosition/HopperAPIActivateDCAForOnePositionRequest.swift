//
//  HopperAPIActivateDCAForOnePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIActivateDCAForOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId : Int , marketOrder : Int ,trailingBuy : Int ,trailingBuyPercentage : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/dca/\(positionId)")
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
