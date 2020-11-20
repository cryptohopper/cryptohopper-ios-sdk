//
//  StrategySpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 19/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class StrategySpec : QuickSpec {
    
    var templateId = ""
    
    override func spec() {
        
        beforeEach {
            
            CryptoHopperConfig.configure(clientId: clientId, environment: environment)

            if(HopperAPISessionManager.shared.session?.accessToken == nil){
                print("Hopper General Spec Authenication : Making Authentication ...")
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAuth.login(username: username, password: password) { (result) in
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
        
        context("Strategy Context"){
            
            
            it("Get All Strategies"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperStrategy.getStrategies(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Strategy].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            it("Get Market Strategies"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperStrategy.getMarketStrategies(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Strategy].self))
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
