//
//  Signal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Signal : Codable {
    
    let name : String?
    let collectCurrency : String?
    let signalTime : Date?
    let signalType : String?
    let coin : String?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case collectCurrency = "collect_currency"
        case signalTime = "signal_time"
        case signalType = "signal_type"
        case coin = "coin"
    }

}
