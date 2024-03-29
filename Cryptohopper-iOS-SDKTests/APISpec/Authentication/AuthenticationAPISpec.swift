//
//  AuthenticationAPISpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 23/10/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class AuthenticationAPISpec : QuickSpec {
    
    override func spec() {
        
        beforeEach {
            CryptoHopperConfig.configure(clientId: clientId,clientSecret: clientSecret, environment: .Sandbox,v2Key: v2Key,v2Value: v2Value,validationKey: validationKey,validationValue: validationValue)
        }
        
        context("Authentication"){
            it("Correct Credentials"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAuth.login(username: username, password: password, verificationCode: "", userAgent: userAgent, appCheckToken: "", deviceName: "") { (result) in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).toNot(beNil())
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }
            
            it("Wrong Credentials"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAuth.login(username: username, password: "WrongPassword", verificationCode: "", userAgent: "" , appCheckToken: "" , deviceName: "") { (result) in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).to(beNil())
                            done()
                        case .failure(let err):
                            expect(err).notTo(beNil())
                            done()
                        }
                    }
                }
            }
        }
        
    }
    
}
