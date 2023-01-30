//
//  OnboardingAPIV2Spec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class OnboardingAPIV2Spec : QuickSpec {
    
    var hopperId = 0
    
    override func spec() {
        
        beforeEach {
            CryptoHopperConfig.configure(clientId: clientId,clientSecret: clientSecret, environment: .Sandbox,v2Key: v2Key,v2Value: v2Value,validationKey: validationKey,validationValue: validationValue)
            
            if(HopperAPISessionManager.shared.session?.accessToken == nil){
                print("Hopper General Spec Authenication : Making Authentication ...")
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
            }else{
                print("Hopper General Spec Authenication : Already Authenticated")
            }
        }
        
        context("V2 Onboarding Init"){
            
            let hopperIdExpectation = self.expectation(description: "HopperId filled")
            let hopperCreatedExpectation = self.expectation(description: "HopperCreated filled")
            
            it("1 Onboarding Init"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2Onboarding.initOnboarding(exchangeId: 5, apiDetails: [String:Any](), isPaperTrading: true, quoteCurrency: "USDT",completion: { result in
                        switch(result){
                        case .success(let initHopperId):
                            expect(initHopperId).to(beAKindOf(Int.self))
                            expect(initHopperId).notTo(beNil())
                            self.hopperId = initHopperId ?? 0
                            hopperIdExpectation.fulfill()
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("2 Onboarding Create"){
                self.wait(for: [hopperIdExpectation], timeout: 60.0)
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2Onboarding.createOnboardingHopper(hopperId: self.hopperId, isBuyingEnabled: true, isSellingEnabled: true, isEnabled: true, isPaperTrading: true, quoteCurrency: "EUR", signallerId: nil, riskLevel: "low") { result in
                        switch(result){
                        case .success(let successMsg):
                            expect(successMsg).notTo(beNil())
                            hopperCreatedExpectation.fulfill()
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

            it("3 Onboarding Edit"){
                self.wait(for: [hopperCreatedExpectation], timeout: 60.0)
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2Onboarding.editOnboarding(hopperId: self.hopperId, exchangeId: 26, apiDetails: [String:Any](), isPaperTrading: true, quoteCurrency: "EUR",completion: { result in
                        switch(result){
                        case .success(let successMsg):
                            expect(successMsg).notTo(beNil())
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
