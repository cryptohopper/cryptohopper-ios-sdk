//
//  HopperAPIGetPairOrderBookOfExchangeResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class HopperAPIGetPairOrderBookOfExchangeResponse: Codable {
    
    public var data : HopperAPIGetPairOrderBookOfExchangeData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetPairOrderBookOfExchangeData: Codable {
    
    public var asks : [[Double]]?
    public var bids : [[Double]]?
    
    private enum CodingKeys: String, CodingKey {
        case asks = "asks"
        case bids = "bids"
    }
    
}
