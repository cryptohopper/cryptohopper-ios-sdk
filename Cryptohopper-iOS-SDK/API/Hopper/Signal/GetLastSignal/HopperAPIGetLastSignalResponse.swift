//
//  HopperAPIGetLastSignalResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetLastSignalResponse: Codable {
    
    var signalLast : String?
    
    private enum CodingKeys: String, CodingKey {
        case signalLast = "data"
    }
    
}
