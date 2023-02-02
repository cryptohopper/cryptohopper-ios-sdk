//
//  HopperAPICopyBotCreateHopperRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 02/02/2023.
//

import Foundation
import UIKit

class HopperAPICopyBotCreateHopperRequest: HopperAPIRequest<HopperAPIPurchaseResponse> {
    
    convenience init(copyBotMarketplaceId : String , paperTrading: Bool , apiKey : String? , apiSecret : String? , apiPassphrase : String? , extraApiKey : String? , extraApiSecret : String? ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/app/mobile/iap")
        
        addBodyItem(name: "platform", value: "ios")
        addBodyItem(name: "marketplace_id", value: copyBotMarketplaceId)
        addBodyItem(name: "load_into_bot", value: "0")
        addBodyItem(name: "free_trial", value: "1")
        addBodyItem(name: "walletscrubber", value: "1")
        addBodyItem(name: "autosync", value: "1")
        
        if(paperTrading){
            addBodyItem(name: "paper_trading", value: "1")
        }else{
            addBodyItem(name: "paper_trading", value: "0")
        }
       
        if(apiKey != nil){
            addBodyItem(name: "api_key", value: apiKey!)
        }
        
        if(apiSecret != nil){
            addBodyItem(name: "api_secret", value: apiSecret!)
        }
        
        if(apiPassphrase != nil){
            addBodyItem(name: "api_passphrase", value: apiPassphrase!)
        }
        
        if(extraApiKey != nil){
            addBodyItem(name: "extra_api_key", value: extraApiKey!)
        }
        
        if(extraApiSecret != nil){
            addBodyItem(name: "extra_api_secret", value: extraApiSecret!)
        }
        
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
