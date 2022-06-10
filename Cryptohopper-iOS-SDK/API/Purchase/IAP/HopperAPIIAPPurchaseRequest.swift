//
//  HopperAPIIAPPurchaseRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 10/06/2022.
//

import Foundation
import UIKit

class HopperAPIIAPPurchaseRequest: HopperAPIRequest<HopperAPIPurchaseResponse> {
    
    convenience init(planId : String? , marketplaceId : String?, hopperId : String?, transactionId : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/app/mobile/iap")
        
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
        
        addBodyItem(name: "transaction_id", value: transactionId)
        
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
