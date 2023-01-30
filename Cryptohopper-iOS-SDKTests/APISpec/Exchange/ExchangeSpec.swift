//
//  ExchangeSpec.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 18/11/2020.
//

import Foundation
import XCTest
import Quick
import Nimble
@testable import Cryptohopper_iOS_SDK

class ExchangeSpec : QuickSpec {
    
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
        
        context("Exchange Context"){
            
            
            it("Get All Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getExchanges(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Exchange].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            
            it("Get Exchange Details"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getExchangeDetails(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Exchange].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Exchange Forex Rates"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getExchangeForexRates(completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([ExchangeForexRates].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Candels of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
                    CryptohopperExchange.getCandlesFromExchange(exchange: "binance", pair: "ETHBTC", timeFrame: CandleTimeFrame.fifteenMin, startDate: yesterday, endDate: Date(),completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([Candle].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Available Currencies of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getAvailableCurrenciesForExchange(exchange: "binance",completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([String:ExchangeCurrencyDetail].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Precision Currencies of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getPrecisionForCurrenciesOfExchange(exchange: "binance",completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([String:String].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Price and amount of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getPriceAndAmountOfExchange(exchange: "binance",market: "ETHBTC",completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([String:String].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get All Tickers Of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getAllTickersOfExchange(exchange: "binance",completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf([String:Ticker].self))
                            done()
                        case .failure(let err):
                            expect(err).to(beNil())
                            done()
                        }
                    })
                }
                
            }
            
            it("Get Pair Order Book Of Exchanges"){
                
                waitUntil(timeout: apiTimeout) { done in
                    CryptohopperExchange.getPairOrderBookOfExchange(exchange: "binance",pair: "ETHBTC",depth: 1,completion: { (result) in
                        switch(result){
                        case .success(let items):
                            expect(items).to(beAKindOf(HopperAPIGetPairOrderBookOfExchangeData.self))
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
