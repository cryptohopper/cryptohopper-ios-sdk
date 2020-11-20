//
//  HopperAPIGetTradeHistoryByIdRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTradeHistoryByIdRequest: HopperAPIRequest<HopperAPIGetTradeHistoryByIdResponse> {
    
    convenience init(hopperId : String,tradeId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/trade/\(tradeId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
