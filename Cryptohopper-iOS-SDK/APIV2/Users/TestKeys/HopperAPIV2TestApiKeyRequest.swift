//
//  HopperAPIV2TestApiKeyRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 30/12/2022.
//

import Foundation
import UIKit

class HopperAPIV2TestApiKeyRequest: HopperAPIRequest<HopperCommonMessageResponse?> {
    
    convenience init(exchange : String?,apiKey : String?,apiSecret : String?,apiPassphrase : String?,extraApiKey : String?,extraApiSecret : String?,subAccount : String?) {
        self.init()
        self.changeUrlPath(path: "/rest/api/v2/user/test-keys",isV2Endpoint: true)
        if(exchange != nil){
            addBodyItem(name: "exchange", value: (exchange ?? ""))
        }
        if(apiKey != nil){
            addBodyItem(name: "api_key", value: (apiKey ?? ""))
        }
        if(apiSecret != nil){
            addBodyItem(name: "api_secret", value: (apiSecret ?? ""))
        }
        if(apiPassphrase != nil){
            addBodyItem(name: "api_passphrase", value: (apiPassphrase ?? ""))
        }
        if(extraApiKey != nil){
            addBodyItem(name: "extra_api_key", value: (extraApiKey ?? ""))
        }
        if(extraApiSecret != nil){
            addBodyItem(name: "extra_api_secret", value: (extraApiSecret ?? ""))
        }
        if(subAccount != nil){
            addBodyItem(name: "sub_account", value: (subAccount ?? ""))
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
