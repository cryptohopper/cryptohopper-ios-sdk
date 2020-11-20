//
//  HopperAPIGetPairOrderBookOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetPairOrderBookOfExchangeResponse: Codable {
    
    var data : HopperAPIGetPairOrderBookOfExchangeData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetPairOrderBookOfExchangeData: Codable {
    
    var asks : [[Double]]?
    var bids : [[Double]]?
    
    private enum CodingKeys: String, CodingKey {
        case asks = "asks"
        case bids = "bids"
    }
    
}
