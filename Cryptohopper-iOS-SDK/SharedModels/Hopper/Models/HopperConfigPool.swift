//
//  HopperConfigPool.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation

public class HopperConfigPool : Codable {
    
    let id : String?
    let name : String?
    let coins : String?
    let config : HopperConfig?
    let updated : String?
    let status : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case coins = "coins"
        case config = "config"
        case updated = "updated"
        case status = "status"
    }

}
