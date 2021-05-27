//
//  HopperAPIPurchaseResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/05/2021.
//

import Foundation

public class HopperAPIPurchaseResponse: Codable {
    
    public var status : Int?
    public var error : Int?
    public var code : Int?
    public var message : String?
    
    private enum CodingKeys: String, CodingKey {
        case status = "status"
        case error = "error"
        case code = "code"
        case message = "message"
    }
    
}
