//
//  HopperAPIPurchaseRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/05/2021.
//

import Foundation
import UIKit

class HopperAPIPurchaseRequest: HopperAPIRequest<HopperAPIPurchaseResponse> {
    
    convenience init(planId : String? , marketplaceId : String?, hopperId : String?, receipt : String) {
        self.init()
        self.changeUrlPath(path:"/mobile/receipt")
        
        addBodyItem(name: "platform", value: "ios")
        
        if(planId != nil){
            addBodyItem(name: "plan_id", value: planId!)
        }
        
        if(marketplaceId != nil){
            addBodyItem(name: "marketplace_id", value: marketplaceId!)
        }
        
        if(hopperId != nil){
            addBodyItem(name: "hopper_id", value: hopperId!)
        }
        
        addBodyItem(name: "receipt", value: receipt)
        
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
