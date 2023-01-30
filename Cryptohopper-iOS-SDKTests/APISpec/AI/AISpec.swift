//
//  AISpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by CH Kaan Bayrak on 27/12/2021.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class AISpec : QuickSpec {
    
    var aiId = ""
    
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
        
        context("AI Context"){
            
            
            it("Get All AIs"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAI.getAIs(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([AI].self))
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
