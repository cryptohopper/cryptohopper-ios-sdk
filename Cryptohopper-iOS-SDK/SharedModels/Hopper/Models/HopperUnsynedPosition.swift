//
//  HopperUnsynedPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 06/01/2021.
//

import Foundation

class HopperUnsynedPosition: Codable {
    
    var pair : String?
    var currency : String?
    var amount : Double?
    var rate : String?
    
    private enum CodingKeys: String, CodingKey {
        case pair = "pair"
        case currency = "cur"
        case amount = "amount"
        case rate = "rate"
    }
    
}
