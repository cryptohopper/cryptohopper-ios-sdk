//
//  HopperAPIGetSignalsInHopperResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetSignalsInHopperResponse: Codable {
    
    var data : HopperAPIGetSignalsInHopperData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }

}

class HopperAPIGetSignalsInHopperData: Codable {
    
    var signals : [MarketSignal]?
    
    private enum CodingKeys: String, CodingKey {
        case signals = "signals"
    }

}
