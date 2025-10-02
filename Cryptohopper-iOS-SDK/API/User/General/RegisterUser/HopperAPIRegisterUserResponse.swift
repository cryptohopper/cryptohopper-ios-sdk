//
//  HopperAPIResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 18/05/2021.
//

import Foundation

public class HopperAPIRegisterUserResponse: Codable {
    
    public var data: HopperRegisterData?
    public var status: Int?
    public var error: Int?
    public var code: Int?
    public var message: String?
    
    private enum CodingKeys: String, CodingKey {
        case data
        case status
        case error
        case code
        case message
    }
}

public class HopperRegisterData: Codable {
    
    public var userId: String?
    public var message: String?
    public var userActivationNeeded: String?
    public var accessToken: String?
    public var refreshToken: String?
    public var deviceSecret: String?
    
    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case message
        case userActivationNeeded = "user_activation_needed"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case deviceSecret = "secret"
    }
}
