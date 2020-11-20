//
//  CryptohopperStrategy.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperStrategy: NSObject {

    // ------------- GENERAL ----------------------------------------
    
    /// Get Strategies
    ///
    public static func getStrategies(completion: @escaping (Result<[Strategy]?, Error>) -> Void) {
        HopperAPIGetStrategiesRequest.init("").request { (data) in
            completion(.success(data.data?.strategies))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Strategy
    ///
    ///- Parameter strategyId: (required) strategy id
    public static func getStrategy(strategyId : Int,completion: @escaping (Result<MarketStrategy?, Error>) -> Void) {
        HopperAPIGetStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Strategy
    ///
    ///- Parameter strategyId: (required) strategy id
    public static func createStrategy(strategyId : Int,name : String,description : String, image : String, minBuys : Int , minSells : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICrateStrategyRequest.init(strategyId: strategyId, name: name, description: description, image: image, minBuys: minBuys, minSells: minSells).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Strategy
    ///
    ///- Parameter strategyId: (required) strategy id
    public static func updateStrategy(strategyId : Int,name : String,description : String, image : String, minBuys : Int , minSells : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateStrategyRequest.init(strategyId: strategyId, name: name, description: description, image: image, minBuys: minBuys, minSells: minSells).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Delete Strategy
    ///
    ///- Parameter strategyId: (required) strategy id
    public static func deleteStrategy(strategyId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Change Image Of Strategy
    ///
    ///- Parameter strategyId: (required) strategy id
    public static func changeImageOfStrategy(strategyId : Int,image : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIChangeImageOfStrategyRequest.init(strategyId: strategyId,image: image).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- Market ----------------------------------------
    
    
    /// Get Market Strategies
    ///
    public static func getMarketStrategies(completion: @escaping (Result<[Strategy]?, Error>) -> Void) {
        HopperAPIGetMarketStrategiesRequest.init("").request { (data) in
            completion(.success(data.data?.strategies))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Market Strategy
    ///
    public static func getMarketStrategy(strategyId: Int, completion: @escaping (Result<Strategy?, Error>) -> Void) {
        HopperAPIGetMarketStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Market Strategies
    ///
    public static func deleteMarketStrategy(strategyId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteMarketStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
