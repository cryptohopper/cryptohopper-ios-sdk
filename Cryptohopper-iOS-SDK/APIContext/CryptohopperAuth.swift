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

    /*!
     *
     * @discussion Login with credentials
     *
     * @param username String
     * @param password String
     * @param verificationCode String? optional
     */
    public static func login(username: String,password: String,verificationCode: String?,userAgent: String,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthenticationRequest.init(username: username, password: password, verificationCode: verificationCode,userAgent : userAgent).request { (authResponse) in
            HopperAPISessionManager.shared.handleAuthResponse(response: authResponse)
            completion(.success("Successfully Logged In"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func loginWithCode(code: String,userAgent: String,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthWithCodeRequest.init(code: code, userAgent : userAgent).request { (authResponse) in
            HopperAPISessionManager.shared.handleAuthResponse(response: authResponse)
            completion(.success("Successfully Logged In"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
     * @discussion Logs out and removes your session
     */
    public static func logout() {
        HopperAPISessionManager.shared.removeSession()
    }
    
    /*!
    * @discussion Cheks if you are authenticated or not
    */
    public static func isAuthenticated() -> Bool {
        return HopperAPISessionManager.shared.hasSession
    }
    
    public static func loginWithAutCode(authCode : String ) {
        let calendar = Calendar.current
        let dd = calendar.date(byAdding: .day, value: 90, to: Date())!
        HopperAPISessionManager.shared.session = HopperAPISession(accessToken: authCode, refreshToken:authCode, accessTokenExpiresAt: dd)
    }
    
}
