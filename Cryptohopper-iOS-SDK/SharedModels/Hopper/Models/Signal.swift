//
//  Signal.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class Signal : Codable {
    
    public private(set) var name : String?
    public private(set) var collectCurrency : String?
    public private(set) var signalTime : Date?
    public private(set) var signalType : String?
    public private(set) var coin : String?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case collectCurrency = "collect_currency"
        case signalTime = "signal_time"
        case signalType = "signal_type"
        case coin = "coin"
    }

}
