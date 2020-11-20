//
//  HopperSession.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPISession: Codable {
    
    var refreshToken:String?
    var accessToken:String?
    var accessTokenExpiresAt:Date?
    
//    private enum CodingKeys: String, CodingKey {
//        case refreshToken = "refresh_token"
//        case accessToken = "access_token"
//        case accessTokenExpiresAt = "token_expiration_date"
//    }
    
    init(accessToken : String,refreshToken : String,accessTokenExpiresAt :Date) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.accessTokenExpiresAt = accessTokenExpiresAt
    }

}
