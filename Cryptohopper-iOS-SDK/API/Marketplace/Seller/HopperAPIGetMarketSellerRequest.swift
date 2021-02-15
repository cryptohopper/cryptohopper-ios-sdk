//
//  HopperAPIGetMarketSellerRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 12/02/2021.
//

import Foundation

class HopperAPIGetMarketSellerRequest: HopperAPIRequest<HopperAPIGetMarketSellerResponse> {
    
    convenience init(id : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/seller/\(id)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
