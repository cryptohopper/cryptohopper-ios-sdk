//
//  HopperAPIV2OnboardingInitRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2OnboardingInitRequest: HopperAPIRequest<HopperAPIV2OnboardingInitResponse> {
    
    convenience init(exchangeId : Int, apiDetails : [String:Any], isPaperTrading : Bool , quoteCurrency : String) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/onboarding/init",isV2Endpoint: true)
        
        var exchangeObject = [String:Any]()
        exchangeObject["id"] = exchangeId
        for details in apiDetails {
            exchangeObject[details.key] = details.value
        }
        addBodyItem(name: "exchange", value: exchangeObject)
        addBodyItem(name: "paperTrading", value: isPaperTrading)
        addBodyItem(name: "quoteCurrency", value: quoteCurrency)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
