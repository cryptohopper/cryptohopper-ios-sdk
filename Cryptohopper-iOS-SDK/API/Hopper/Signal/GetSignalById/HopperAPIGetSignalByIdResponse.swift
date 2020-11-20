//
//  HopperAPIGetSignalByIdResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetSignalByIdResponse: Codable {
    
    var signal : MarketSignal?
    
    private enum CodingKeys: String, CodingKey {
        case signal = "data"
    }

}
