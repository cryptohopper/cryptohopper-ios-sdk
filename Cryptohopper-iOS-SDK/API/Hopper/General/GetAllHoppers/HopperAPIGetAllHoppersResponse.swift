//
//  HopperAPIHopperResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation

class HopperAPIGetAllHoppersResponse: Codable {
    
    var data : HopperAPIGetAllHoppersData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetAllHoppersData : Codable {
    
    var hoppers:[Hopper]?
    
    private enum CodingKeys: String, CodingKey {
        case hoppers = "hoppers"
    }
    
}
