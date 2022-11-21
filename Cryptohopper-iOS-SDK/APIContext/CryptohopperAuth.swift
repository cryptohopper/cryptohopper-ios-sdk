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
    public static func login(username: String,password: String,verificationCode: String?,userAgent: String,appCheckToken : String?,deviceName : String?,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthenticationRequest.init(username: username, password: password, verificationCode: verificationCode,userAgent : userAgent,appCheckToken: appCheckToken, deviceName: deviceName).request { (authResponse) in
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
     *
     * @discussion Social login with token
     *
     * @param socialType String
     * @param token String
     * @param nonce String? optional
     */
    public static func socialLogin(socialType: String,token: String,nonce: String?,userAgent: String,appCheckToken : String?,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPISocialLoginRequest.init(socialType: socialType, token : token, nonce : nonce, userAgent: userAgent,appCheckToken: appCheckToken).request { (authResponse) in
            HopperAPISessionManager.shared.handleAuthResponse(response: authResponse)
            completion(.success("Successfully Logged In"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    //----------DEVICE AUTHORIZATION---------
    
    /*!
     *
     * @discussion Device authorization with code
     *
     * @param code String
     */
    public static func authDeviceWithCode(code: String,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthDeviceWithCodeRequest.init(code: code).request { (response) in
            completion(.success(response.message ?? ""))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
     *
     * @discussion Device authorization resend email (60 second cooldown)
     *
     */
    public static func authDeviceResendEmail(completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthDeviceResendEmailRequest.init("").request { (response) in
            completion(.success(response.message ?? ""))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
     *
     * @discussion Device authorization check if device authorized
     *
     */
    public static func authDeviceCheck(completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthDeviceCheckIfAuthorizedRequest.init("").request { (response) in
            completion(.success(response.message ?? ""))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
     *
     * @discussion Device authorization get list
     *
     */
    public static func authDeviceList(completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthDeviceGetListRequest.init("").request { (response) in
            completion(.success(response.message ?? ""))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
     *
     * @discussion Device authorization revoke device
     *
     */
    public static func authDeviceRevoke(deviceId: String,completion: @escaping (Result<String, Error>) -> Void) {
        HopperAPIAuthDeviceRevokeRequest.init(deviceId: deviceId).request { (response) in
            completion(.success(response.message ?? ""))
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
