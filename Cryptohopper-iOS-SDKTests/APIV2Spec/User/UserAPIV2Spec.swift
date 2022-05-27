//
//  APIV2UserSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class UserAPIV2Spec : QuickSpec {
    
    override func spec() {
        
        beforeEach {
            CryptoHopperConfig.configure(clientId: clientId,clientSecret: clientSecret, environment: .Sandbox,v2Key: v2Key,v2Value: v2Value)
            
            if(HopperAPISessionManager.shared.session?.accessToken == nil){
                print("Hopper General Spec Authenication : Making Authentication ...")
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAuth.login(username: username, password: password, verificationCode: "", userAgent: userAgent) { (result) in
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
            }else{
                print("Hopper General Spec Authenication : Already Authenticated")
            }
        }
        
        context("V2 User"){
            
            it("Get User Profile"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2User.getUserProfile(completion: { result in
                        switch(result){
                        case .success(let profile):
                            expect(profile).to(beAKindOf(V2User.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Edit User Property"){
                waitUntil(timeout: apiTimeout) { done in
                    let properties = [ "name" : "AppTesterNameTest" ]
                    CryptohopperV2User.editUserProperties(properties : properties,completion: { result in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).toNot(beNil())
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Check User Balance"){
                waitUntil(timeout: apiTimeout) { done in
                    let apiProperties = [
                        "api_key": "Test123",
                        "api_passphrase": "Test123"
                    ]
                    CryptohopperV2User.checkUserBalance(exchange: "binance", apiProperties: apiProperties, completion: { result in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).toNot(beNil())
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Check Username"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2User.checkUsername(username: "AppTester2", completion: { result in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).toNot(beNil())
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Create contact request"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2User.createContactMessage(email: "kaan@cryptohpper.com", message: "Test Kaan Message", name: "CH Kaan", subject: "Test message from mobile", completion: { result in
                        switch(result){
                        case .success(let successStr):
                            expect(successStr).toNot(beNil())
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
        }
        
    }
    
}
