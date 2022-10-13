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
    public static func configure(clientId: String, clientSecret : String , environment : HopperAPIEnvironment , v2Key : String = "" , v2Value : String = "", validationKey : String = "", validationValue : String = "") {
        
        HopperAPIConfigurationManager.shared.config.clientId = clientId
        HopperAPIConfigurationManager.shared.config.clientSecret = clientSecret
        HopperAPIConfigurationManager.shared.config.environment = environment
        HopperAPIConfigurationManager.shared.config.v2ApiValidationKey = v2Key
        HopperAPIConfigurationManager.shared.config.v2ApiValidationValue = v2Value
        HopperAPIConfigurationManager.shared.config.apiBasicValidationKey = validationKey
        HopperAPIConfigurationManager.shared.config.apiBasicValidationValue = validationValue
    }
    
}
