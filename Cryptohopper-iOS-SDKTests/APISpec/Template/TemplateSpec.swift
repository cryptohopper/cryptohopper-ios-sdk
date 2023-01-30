//
//  TemplateSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 18/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class TemplateSpec : QuickSpec {
    
    var templateId = ""
    
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
        
        context("Tempalte Context"){
            
            
            it("Get All Templates"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperTemplate.getTemplates(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Template].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            it("Get Basic Template"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperTemplate.getBasicTemplates(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([BasicTemplate].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            it("Get Basic Template For Exchange"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperTemplate.getBasicTemplateForExchange(exchange: "houbi",completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([BasicTemplate].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            
            it("Get Market Templates"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperTemplate.getMarketTemplates(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([MarketTemplate].self))
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
