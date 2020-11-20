//
//  HopperAPIGetCandlesFromExchangeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetCandlesFromExchangeRequest: HopperAPIRequest<HopperAPIGetCandlesFromExchangeResponse> {
    
    convenience init(exchange : String,pair : String,timeFrame: CandleTimeFrame,startDate : Date,endDate : Date) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/exchange/\(exchange)/candle/\(pair)/\(timeFrame.rawValue)/\( startDate.timeIntervalSince1970)/\(endDate.timeIntervalSince1970)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
