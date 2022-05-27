//
//  HopperAPIV2CheckUserBalanceRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2CheckUserBalanceRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(exchangeKey : String,apiProperties : [String:Any]) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user/balances",isV2Endpoint: true)
        addBodyItem(name: "exchange", value: exchangeKey)
        for apiP in apiProperties {
            addBodyItem(name: apiP.key, value: apiP.value)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
