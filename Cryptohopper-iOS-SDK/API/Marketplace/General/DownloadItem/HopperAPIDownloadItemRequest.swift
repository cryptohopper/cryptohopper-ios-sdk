//
//  HopperAPIDownloadItemRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIDownloadItemRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(marketPlaceItemId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/downloaditem")
        addHeader(name: "marketplace_item_id", value: marketPlaceItemId)
        addBodyItem(name: "marketplace_item_id", value: marketPlaceItemId)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
