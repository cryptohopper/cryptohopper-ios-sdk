//
//  HopperAPIV2GetAllSignalsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2GetAllSignalsRequest: HopperAPIRequest<[V2Signal]?> {
    
    convenience init(exchange : String?) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/signal/list",isV2Endpoint: true)
        
        if(exchange != nil){
            addQueryItem(name: "exchange", value: exchange)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
