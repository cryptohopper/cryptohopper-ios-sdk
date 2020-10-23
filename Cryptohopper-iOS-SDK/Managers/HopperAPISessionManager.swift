//
//  HopperAPISessionManager.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPISessionManager {
    
    static let shared = HopperAPISessionManager()
    private init () {}
    private let keychain = Keychain(service: "hooper-api-keychain")
    
    var session:HopperAPISession? {
        set {
            guard let clientId = HopperAPIConfigurationManager.shared.config.clientId else {return}
            if newValue == nil {
                try? keychain.remove(clientId)
                return
            }
            guard let encodedSession = try? JSONEncoder().encode(newValue) else {return}
            try? keychain.set(encodedSession, key: clientId)
        }
        get {
            guard let clientId = HopperAPIConfigurationManager.shared.config.clientId else {return nil}
            guard let data = try? keychain.getData(clientId) else {return nil}
            return try? JSONDecoder().decode(HopperAPISession.self, from: data)
        }
    }
    
    private var hasSession:Bool {
        guard let _ = session else {return false}
        return true
    }
    

    
    func checkAuthentication(onSuccess:@escaping HopperAPIEmptySuccessClosure, onFail: HopperAPIRequestFailClosure? = nil) {
        if hasSession {
            updateRefreshTokenIfNeeded(onSuccess: onSuccess, onFail: onFail)
        }else {
            onFail?(HopperError.missingAccessToken)
        }
    }
    
    func removeSession() {
        session = nil
    }
    
    
    func updateRefreshTokenIfNeeded(onSuccess:@escaping HopperAPIEmptySuccessClosure, onFail: HopperAPIRequestFailClosure? = nil) {
        let refreshDate = session?.accessTokenExpiresAt?.timeIntervalSince1970 ?? 0
        let currentDate = Date().timeIntervalSince1970
        if currentDate > refreshDate {
            guard let refreshToken = session?.refreshToken else {
                onFail?(HopperError.missingRefreshToken)
                return
            }
            
            HopperAPIRefreshTokenRequest.init(refreshToken: refreshToken).request({ (response) in
                self.handleAuthResponse(response: response)
                onSuccess()
            }, onFail)
        }else {
            onSuccess()
        }
    }
    
    func handleAuthResponse(response:HopperAPIAuthenticationResponse) {
        var dayComponent    = DateComponents()
        dayComponent.year    = 1
        let theCalendar     = Calendar.current
        let nextDate        = theCalendar.date(byAdding: dayComponent, to: Date())
        self.session = HopperAPISession(accessToken: response.accessToken ?? "", refreshToken: response.accessToken ?? "", accessTokenExpiresAt: nextDate ?? Date())
    }
    
}
