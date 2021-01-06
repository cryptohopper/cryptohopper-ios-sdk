//
//  HopperAPIGetUnsyncedPositionResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/01/2021.
//

import Foundation

class HopperAPIGetUnsyncedPositionResponse: Codable {
    
    var data : HopperAPIGetUnsyncedPositionResponseData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetUnsyncedPositionResponseData : Codable {
    
    var unsyned : [HopperUnsynedPosition]?
    var dust : [HopperUnsynedPosition]?
    
    private enum CodingKeys: String, CodingKey {
        case unsyned = "unsyned"
        case dust = "dust"
    }
    
}
