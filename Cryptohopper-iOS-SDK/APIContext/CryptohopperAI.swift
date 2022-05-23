//
//  CryptohopperAI.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/12/2021.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperAI: NSObject {

    // ------------- GENERAL ----------------------------------------
    
    /*!
    * @discussion Get AIs
    */
    public static func getAIs(completion: @escaping (Result<[AI]?, Error>) -> Void) {
        HopperAPIGetAIsRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
}

