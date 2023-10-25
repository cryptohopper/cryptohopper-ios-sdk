//
//  HopperAPIResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 18/05/2021.
//

import Foundation

public class HopperAPIRegisterUserResponse: Codable {
    
    public var data : HopperRegisterData?
    public var status : Int?
    public var error : Int?
    public var code : Int?
    public var message : String?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
        case status = "status"
        case error = "error"
        case code = "code"
        case message = "message"
    }
    
}

public class HopperRegisterData: Codable {
    
    public var userId : String?
    public var message : String?
    public var userActivationNeeded : String?
    
    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case message = "message"
        case userActivationNeeded = "user_activation_needed"
    }
    
}
