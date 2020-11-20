//
//  MarketplaceSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 17/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class MarketplaceSpec : QuickSpec {
    
    var signalId = ""
    
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
        
        context("Marketplace General Context"){
            
            it("Get Homepage"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getHomePage(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf(HopperAPIGetHomePageData.self))
                            expect(items?.featuredHome).to(beAKindOf([MarketItem].self))
                            expect(items?.homeEditorsPick).to(beAKindOf([MarketItem].self))
                            expect(items?.homeTopSignals).to(beAKindOf([MarketItem].self))
                            expect(items?.homeBestRatedStrategies).to(beAKindOf([MarketItem].self))
                            expect(items?.homeBestRatedTemplates).to(beAKindOf([MarketItem].self))
                            expect(items?.homeBestRatedSignals).to(beAKindOf([MarketItem].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }

        }
        
        context("Marketplace Signals Context"){
            
            it("Get Signals"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getAvailableSignals(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([MarketSignal].self))
                            self.signalId = items![0].signalId!
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
            }
            
            it("Get Signal Distribution"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getSignalDistribution(signalId: Int(self.signalId)!, completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Int].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Signal Performance"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getSignalPerformance(signalId: Int(self.signalId)!, completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([MarketSignalPerformance].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Signal Stats"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getSignalStats(signalId: Int(self.signalId)!, completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf(MarketSignalStat.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
        }
        
        
        context("Marketplace Strategy Context"){
            
            it("Get Available Strategy"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getAvailableStrategies(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([MarketStrategy].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
        }
        
        context("Marketplace Template Context"){
            
            it("Get Available Templates"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperMarketplace.getAvailableTemplates(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([MarketplaceTemplate].self))
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
