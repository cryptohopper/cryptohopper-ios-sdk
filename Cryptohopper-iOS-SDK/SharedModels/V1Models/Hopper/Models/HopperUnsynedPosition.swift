//
//  HopperUnsynedPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 06/01/2021.
//

import Foundation

public class HopperUnsynedPosition: Codable {
    
    public private(set) var pair : String?
    public private(set) var currency : String?
    public private(set) var amount : QuantumValue?
    public private(set) var rate : String?
    
    private enum CodingKeys: String, CodingKey {
        case pair = "pair"
        case currency = "cur"
        case amount = "amount"
        case rate = "rate"
    }
    
}
