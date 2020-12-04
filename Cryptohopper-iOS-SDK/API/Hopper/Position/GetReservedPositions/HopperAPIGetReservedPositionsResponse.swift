//
//  HopperAPIGetReservedPositionsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/12/2020.
//

import Foundation

class HopperAPIGetReservedPositionsResponse: Codable {
    
    var data : [HopperReserved]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
