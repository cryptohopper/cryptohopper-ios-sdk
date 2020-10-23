//
//  CryptoHopper.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptoHopper: NSObject {
    
    public static var debugModeEnabled: Bool {
        set {
            HopperAPIConfigurationManager.shared.config.debugModeEnabled = newValue
        }
        get {
            return HopperAPIConfigurationManager.shared.config.debugModeEnabled
        }
    }

    public static func login(username: String,password: String) -> Result<String, Error> {
        var result: Result<String, Error>!
        let semaphore = DispatchSemaphore(value: 0)

        HopperAPIAuthenticationRequest.init(username: username, password: password).request { (authResponse) in
            result = .success("Successfully Logged In")
            semaphore.signal()
        } _: { (err) in
            result = .failure(err)
            semaphore.signal()
        }
        
        _ = semaphore.wait(wallTimeout: .distantFuture)
        return result
    }

    
    public static func configure(clientId: String, environment : HopperAPIEnvironmnet, isDebugEnabled : Bool) {
        HopperAPIConfigurationManager.shared.config.clientId = clientId
        HopperAPIConfigurationManager.shared.config.environment = environment
        self.debugModeEnabled = isDebugEnabled
    }
    
}
