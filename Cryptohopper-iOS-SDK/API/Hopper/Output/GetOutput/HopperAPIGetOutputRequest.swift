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
        formatter.dateFormat = "Y-m-d H:m:s"
        
        var options = [String:Any]()
        options["date_from"] = formatter.string(from: dateFrom)
        options["date_to"] = formatter.string(from: dateTo)
        options["entry_type"] = entryType.rawValue
        options["sort_field"] = sortField.rawValue
        options["sort_order"] = sortOrder.rawValue
        options["page"] = page
        options["perPage"] = perPage
        addBodyItem(name: "search_opts", value: options)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
