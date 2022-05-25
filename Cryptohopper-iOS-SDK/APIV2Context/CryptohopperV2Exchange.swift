//
//  CryptohopperV2Exchange.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Exchange: NSObject {

    public static func getExchanges(completion: @escaping (Result<[V2Exchange]?, Error>) -> Void) {
        HopperAPIV2GetAllExchangesRequest.init("").request { (exchanges) in
            completion(.success(exchanges))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func getExchangeMarkets(exchangeId : Int,completion: @escaping (Result<[V2Pair]?, Error>) -> Void) {
        HopperAPIV2GetTradingPairOfExchangeRequest.init(exchangeId: exchangeId).request { (pairs) in
            completion(.success(pairs))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
