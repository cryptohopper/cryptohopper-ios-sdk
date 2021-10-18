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
    
    var authenticationHost : String = "www.cryptohopper.com"
    
    var host: String {
        switch environment {
        case .Sandbox:
            return "api.cryptohopper.com"
        case .Production:
            return "api.cryptohopper.com"
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
