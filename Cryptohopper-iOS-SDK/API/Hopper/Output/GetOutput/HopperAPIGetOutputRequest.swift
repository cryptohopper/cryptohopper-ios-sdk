//
//  HopperAPIGetOutputRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetOutputRequest: HopperAPIRequest<HopperAPIGetOutputResponse> {
    
    convenience init(hopperId : String,dateFrom : Date,dateTo : Date ,entryType : HopperSearchOptionsItemEntry , sortField : HopperSearchOptionsItemSortField, sortOrder : HopperSearchOptionsItemSortOrder , page : Int , perPage : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/output")
        let formatter = DateFormatter()
        formatter.dateFormat = "d/m/Y H:m"
        
        addQueryItem(name: "dateFrom", value: formatter.string(from: dateFrom))
        addQueryItem(name: "dateTo", value: formatter.string(from: dateTo))
        addQueryItem(name: "entryType", value: entryType.rawValue)
        addQueryItem(name: "sortBy", value: sortField.rawValue)
        addQueryItem(name: "sortOrder", value: sortOrder.rawValue)
        addQueryItem(name: "offset", value: page.description)
        addQueryItem(name: "count", value: perPage.description)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
