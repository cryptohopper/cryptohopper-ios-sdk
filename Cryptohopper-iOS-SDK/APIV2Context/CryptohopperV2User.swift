//
//  CryptohopperV2User.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2User: NSObject {

    public static func getUserProfile(completion: @escaping (Result<V2User?, Error>) -> Void) {
        HopperAPIV2GetUserProfileRequest.init("").request { (userProfile) in
            completion(.success(userProfile))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func editUserProperties(name: String, countryISOCode : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIV2EditUserPropertiesRequest.init(name: name,countryISOCode : countryISOCode).request { (_) in
            completion(.success("Success"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func checkUserBalance(exchange : String,apiProperties: [String:Any],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIV2CheckUserBalanceRequest.init(exchangeKey: exchange, apiProperties: apiProperties).request { (_) in
            completion(.success("Success!, Check From WS"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func checkUsername(username : String,completion: @escaping (Result<Bool?, Error>) -> Void) {
        HopperAPIV2CheckUsernameRequest.init(username: username).request { (result) in
            completion(.success(result?.exists))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
