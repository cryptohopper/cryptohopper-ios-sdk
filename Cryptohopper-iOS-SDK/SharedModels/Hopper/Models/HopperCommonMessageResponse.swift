//
//  HopperCommonMessageResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation

class HopperCommonMessageResponse: Codable {
    
    var data : String?
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
