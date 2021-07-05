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

    public static func login(username: String,password: String,verificationCode: String?,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthenticationRequest.init(username: username, password: password, verificationCode: verificationCode).request { (authResponse) in
            HopperAPISessionManager.shared.handleAuthResponse(response: authResponse)
            completion(.success("Successfully Logged In"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func logout() {
        HopperAPISessionManager.shared.removeSession()
    }
    
    public static func isAuthenticated() -> Bool {
        return HopperAPISessionManager.shared.hasSession
    }
    
}
