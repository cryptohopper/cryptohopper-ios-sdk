//
//  HopperAPIGetUnsyncedPositionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/01/2021.
//

import Foundation

public class HopperAPIGetUnsyncedPositionResponse: Codable {
    
    var data : HopperAPIGetUnsyncedPositionResponseData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetUnsyncedPositionResponseData : Codable {
    
    public private(set) var unsyned : [HopperUnsynedPosition]?
    public private(set) var dust : [HopperUnsynedPosition]?
    
    private enum CodingKeys: String, CodingKey {
        case unsyned = "unsynced"
        case dust = "dust"
    }
    
}
