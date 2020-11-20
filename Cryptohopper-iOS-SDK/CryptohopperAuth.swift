//
//  CryptohopperAuth.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperAuth: NSObject {

    public static func login(username: String,password: String,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthenticationRequest.init(username: username, password: password).request { (authResponse) in
            HopperAPISessionManager.shared.handleAuthResponse(response: authResponse)
            completion(.success("Successfully Logged In"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
}
