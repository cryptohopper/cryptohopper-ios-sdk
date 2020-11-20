//
//  UserSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 18/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class UserSpec : QuickSpec {
    
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
        
        context("User Context"){
            
            it("Get User Profile"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getUserProfile(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf(UserProfile.self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get User Notifications"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getUserNotifications(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([UserNotification].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get User Purchases"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getUserPurchases(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([UserPurchase].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            it("Get User Transaction"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getUserTransactions(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([UserTransaction].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get All User Subscription"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getAllUserSubscriptions(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([UserSubscription].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get All Subscription Plan"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperUser.getAllSubscriptionPlans(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([SubscriptionPlan].self))
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
