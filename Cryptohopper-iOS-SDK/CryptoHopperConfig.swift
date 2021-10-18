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
    
    /*!
     * @discussion Configure your sdk with your client id
     */
    public static func configure(clientId: String, clientSecret : String , environment : HopperAPIEnvironment) {
        
        HopperAPIConfigurationManager.shared.config.clientId = clientId
        HopperAPIConfigurationManager.shared.config.clientSecret = clientSecret
        HopperAPIConfigurationManager.shared.config.environment = environment
    }
    
}
