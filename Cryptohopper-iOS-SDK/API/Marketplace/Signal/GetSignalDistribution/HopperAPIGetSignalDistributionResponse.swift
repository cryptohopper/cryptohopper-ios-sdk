//
//  HopperAPIGetSignalDistributionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetSignalDistributionResponse: Codable {
    
    var data : [String:Int]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
