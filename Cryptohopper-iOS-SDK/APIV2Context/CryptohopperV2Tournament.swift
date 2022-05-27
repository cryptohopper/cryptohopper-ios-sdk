//
//  CryptohopperV2Tournament.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Tournament: NSObject {

    public static func getTournaments(completion: @escaping (Result<[V2Tournament]?, Error>) -> Void) {
        HopperAPIV2GetAllTournamentsRequest.init("").request { (signals) in
            completion(.success(signals))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
