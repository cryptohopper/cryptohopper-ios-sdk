//
//  HopperAPIGetTradeHistoryRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetTradeHistoryRequest: HopperAPIRequest<HopperAPIGetTradeHistoryResponse> {
    
    convenience init(hopperId : String,dateFrom : Date?,count : Int?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/trade")
        if(dateFrom != nil){
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "Y-m-d H:m:s"
            dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
            self.addQueryItem(name: "dateFrom", value: dateFormatter.string(from: dateFrom!))
        }
        if(count != nil){
            self.addQueryItem(name: "count", value: count?.description)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
