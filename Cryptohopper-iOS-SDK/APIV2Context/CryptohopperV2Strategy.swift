//
//  CryptohopperV2Strategy.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Strategy: NSObject {

    public static func getBuiltinStrategies(completion: @escaping (Result<[V2Strategy]?, Error>) -> Void) {
        HopperAPIV2GetAllBuiltinStrategiesRequest.init("").request { (signals) in
            completion(.success(signals))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
