//
//  CryptohopperV2Currency.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Currency: NSObject {

    public static func getCurrencies(completion: @escaping (Result<[V2Currency]?, Error>) -> Void) {
        HopperAPIV2GetAllCurrenciesRequest.init("").request { (currencies) in
            completion(.success(currencies))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
