//
//  HopperAPIGetOutputResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 07/12/2020.
//

import Foundation

class HopperAPIGetOutputResponse: Codable {
    
    var data : [HopperOutput]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
