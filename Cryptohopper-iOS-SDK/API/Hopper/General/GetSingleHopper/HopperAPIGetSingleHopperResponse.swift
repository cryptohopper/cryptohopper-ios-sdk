//
//  HopperAPIGetSingleHopperResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/10/2020.
//

import Foundation

class HopperAPIGetSingleHopperResponse: Codable {
    
    var data : HopperAPIGetSingleHopperData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPIGetSingleHopperData : Codable {
    
    var hopper:Hopper?
    
    private enum CodingKeys: String, CodingKey {
        case hopper = "hopper"
    }
    
}
