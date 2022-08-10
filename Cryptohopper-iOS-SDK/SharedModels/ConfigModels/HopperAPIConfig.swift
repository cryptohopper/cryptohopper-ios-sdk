//
//  HopperConfig.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

public enum HopperAPIEnvironment: String {
    case Sandbox = "Sandbox"
    case Production = "Production"
}

class HopperAPIConfiguration {

    var environment: HopperAPIEnvironment = .Production
    var debugModeEnabled: Bool = false
    var clientId : String?
    var clientSecret : String?
    var isAuthenticationRequest = false
    var v2ApiValidationKey : String = ""
    var v2ApiValidationValue : String = ""
    var authenticationHost : String = "app-aws-useast1.cryptohopper.com"
    
    var host: String {
        switch environment {
        case .Sandbox:
            return "api.cryptohopper.com"
        case .Production:
            return "api.cryptohopper.com"
        }
    }
    
    var v2Host: String {
        switch environment {
        case .Sandbox:
            return "restapi-dev.cryptohopper.com"
        case .Production:
            return "restapi.cryptohopper.com"
        }
    }
    
    var urlScheme:String {
        switch environment {
        case .Sandbox:
            return "https"
        case .Production:
            return "https"
        }
    }
    
}
