//
//  ExchangeAPIV2Spec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class ExchangeAPIV2Spec : QuickSpec {
    
    override func spec() {
        
        beforeEach {
            CryptoHopperConfig.configure(clientId: clientId,clientSecret: clientSecret, environment: .Sandbox,v2Key: v2Key,v2Value: v2Value,validationKey: validationKey,validationValue: validationValue)
            
            if(HopperAPISessionManager.shared.session?.accessToken == nil){
                print("Hopper General Spec Authenication : Making Authentication ...")
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperAuth.login(username: username, password: password, verificationCode: "", userAgent: userAgent, appCheckToken: "") { (result) in
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
        
        context("V2 Exchange"){
            
            it("Get All Exchanges "){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2Exchange.getExchanges(completion: { result in
                        switch(result){
                        case .success(let exchanges):
                            expect(exchanges).to(beAKindOf([V2Exchange].self))
                            expect(exchanges?.count).to(beGreaterThan(0))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Get Markets Of Poloniex"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperV2Exchange.getExchangeMarkets(exchangeId: 1, completion: { result in
                        switch(result){
                        case .success(let pairs):
                            expect(pairs).to(beAKindOf([V2Pair].self))
                            expect(pairs?.count).to(beGreaterThan(0))
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
