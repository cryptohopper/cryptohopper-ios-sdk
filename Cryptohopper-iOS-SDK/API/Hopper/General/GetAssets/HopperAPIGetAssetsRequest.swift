//
//  HopperAPIGetAssetsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 10/06/2021.
//


import Foundation
import UIKit

class HopperAPIGetAssetsRequest: HopperAPIRequest<HopperAPIGetAssetsResponse> {
    
    convenience init(id : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(id)/assets")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
