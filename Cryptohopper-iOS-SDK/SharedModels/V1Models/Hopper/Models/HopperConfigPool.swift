//
//  HopperConfigPool.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

public class HopperConfigPool : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var coins : String?
    public private(set) var config : HopperConfig?
    public private(set) var updated : String?
    public private(set) var status : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case coins = "coins"
        case config = "config"
        case updated = "updated"
        case status = "status"
    }

}
