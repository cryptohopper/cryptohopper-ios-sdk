//
//  HopperAPIV2OnboardingCreateRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import UIKit

class HopperAPIV2OnboardingCreateRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(hopperId : Int,isBuyingEnabled : Bool,isSellingEnabled : Bool, isEnabled : Bool, isPaperTrading : Bool , quoteCurrency : String , signallerId : Int? , riskLevel : String?) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/onboarding/create",isV2Endpoint: true)
        
        var exchangeObject = [String:Any]()
        exchangeObject["paperTrading"] = isPaperTrading
        exchangeObject["quoteCurrency"] = quoteCurrency
        addBodyItem(name: "exchange", value: exchangeObject)
        
        var botObject = [String:Any]()
        
        var settingsObject = [String:Any]()
        settingsObject["id"] = hopperId
        settingsObject["buying"] = isBuyingEnabled
        settingsObject["selling"] = isSellingEnabled
        settingsObject["enabled"] = isEnabled
        
        botObject["settings"] = settingsObject
        
        if(signallerId != nil){
            var signalObject = [String:Any]()
            signalObject["signallerId"] = signallerId
            botObject["signal"] = signalObject
        }
        
        if(riskLevel != nil){
            var strategyObject = [String:Any]()
            strategyObject["riskLevel"] = riskLevel
            botObject["strategy"] = strategyObject
        }
        
        addBodyItem(name: "bot", value: botObject)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
