//
//  HopperGeneralSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class HopperGeneralSpec : QuickSpec {
    
    var hopperId = ""
    
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
        
        context("Hopper General Context"){
            
            it("Get All Hoppers "){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getAllHoppers(name: nil, exchange: nil, enabled: nil) { (result) in
                        switch(result){
                        case .success(let hoppers):
                            expect(hoppers).to(beAKindOf([Hopper].self))
                            self.hopperId = hoppers![0].id!
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }
            
            it("Get Most Traded Currencies"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getHopperMostTradedCurrency(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let mostTradedCurrencies):
                            expect(mostTradedCurrencies).to(beAKindOf([HopperMostTradedModel].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Order Context"){
            
            it("Get All Open Orders Of Hopper"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getAllOpenOrders(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let openOrders):
                            expect(openOrders).to(beAKindOf([HopperOrder].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Position Context"){
            
            it("Get All Positions Of Hopper"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getAllPositions(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let positions):
                            expect(positions).to(beAKindOf([HopperPosition].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }
            
            it("Get Hold Positions Of Hopper"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getHoldPositions(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let holdPositions):
                            expect(holdPositions).to(beAKindOf([HopperPosition].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Signal Context"){
            
            it("Get All Signals Of Hopper"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getSignalsInHopper(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let positions):
                            expect(positions).to(beAKindOf([MarketSignal].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Dashboard Stats Context"){
            
            it("Get Dashboard Stats"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getDashboardStats(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let stats):
                            expect(stats).to(beAKindOf(HopperDashboardStats.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Subscription Context"){
            
            it("Get Subscription"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getSubscription(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let sub):
                            expect(sub).to(beAKindOf(HopperSubscription.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        
        context("Hopper Config Context"){
            
            it("Get Config"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getConfig(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let config):
                            expect(config).to(beAKindOf(HopperConfig.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }
            
            it("Get All Config Pools"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getAllConfigPools(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let configPools):
                            expect(configPools).to(beAKindOf([HopperConfigPool].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        context("Hopper Trade Context"){
            
            it("Get Trade"){
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperHopper.getTradeHistory(hopperId: self.hopperId) { (result) in
                        switch(result){
                        case .success(let orders):
                            expect(orders).to(beAKindOf([HopperOrder].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    }
                }
            }

        }
        
        
    }
    
}