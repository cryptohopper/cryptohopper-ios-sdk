//
//  ConfigManagerSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 23/10/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class ConfigManagerSpec : QuickSpec {
    
    override func spec() {
        
        var configManager : HopperAPIConfigurationManager!
        
        beforeEach {
            CryptoHopperConfig.configure(clientId: clientId, environment: environment)
            configManager = HopperAPIConfigurationManager.shared
        }
        
        context("Config Manager object check"){
            it("should be not nil"){
                expect(configManager).toNot(beNil())
            }
        }
        
        context("ConfigManager config check"){
            it("ClientId is equal to setted clientId"){
                expect(configManager.config.clientId).to(equal(clientId))
            }
            it("Environment is equal to setted environment"){
                expect(configManager.config.environment).to(equal(environment))
            }
            it("Host is equal to setted host with respect to environment"){
                expect(configManager.config.host).to(equal("api.cryptohopper.com"))
            }
            it("Host is equal to setted host with respect to environment"){
                expect(configManager.config.urlScheme).to(equal("https"))
            }
        }
        
    }
    
}
