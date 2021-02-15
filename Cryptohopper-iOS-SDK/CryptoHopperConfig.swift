//
//  CryptoHopper.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptoHopperConfig: NSObject {
    
    public static func configure(clientId: String, environment : HopperAPIEnvironment) {
        
        HopperAPIConfigurationManager.shared.config.clientId = clientId
        HopperAPIConfigurationManager.shared.config.environment = environment
    }
    
}
