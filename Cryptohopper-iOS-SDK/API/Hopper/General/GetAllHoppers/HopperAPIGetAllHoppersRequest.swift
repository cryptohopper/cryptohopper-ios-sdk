//
//  HopperAPIGetAllHopersRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPIGetAllHoppersRequest: HopperAPIRequest<HopperAPIGetAllHoppersResponse> {
    
    convenience init(name : String?, exchange : HopperConfigExchange? , enabled : Int?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper")
        if(name != nil){
            addQueryItem(name: "name", value: name)
        }
        if(exchange != nil){
            addQueryItem(name: "exchange", value: exchange?.rawValue)
        }
        if(enabled != nil){
            addQueryItem(name: "enabled", value: enabled?.description)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
