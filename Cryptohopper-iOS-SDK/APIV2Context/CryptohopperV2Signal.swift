//
//  CryptohopperV2Signal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Signal: NSObject {

    public static func getSignals(exchange : String? , completion: @escaping (Result<[V2Signal]?, Error>) -> Void) {
        HopperAPIV2GetAllSignalsRequest.init(exchange: exchange).request { (signals) in
            completion(.success(signals))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
