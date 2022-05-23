//
//  V2Currency.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation

import Foundation

public class V2Currency : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var ticker : String?
    public private(set) var image : String?
    public private(set) var isStableCoin : Bool?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case ticker = "ticker"
        case image = "image"
        case isStableCoin = "isStableCoin"
    }
    
}



