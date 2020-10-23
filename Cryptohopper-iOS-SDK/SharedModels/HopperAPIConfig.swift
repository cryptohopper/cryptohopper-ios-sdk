//
//  HopperConfig.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

public enum HopperAPIEnvironmnet: String {
    case Sandbox = "Sandbox"
    case Production = "Production"
}

class HopperAPIConfiguration {

    var environment: HopperAPIEnvironmnet = .Production
    var debugModeEnabled: Bool = false
    var clientId : String?
    
    var host: String {
        switch environment {
        case .Sandbox:
            return "api.cryptohopper.com/v1/"
        case .Production:
            return "api.cryptohopper.com/v1/"
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
