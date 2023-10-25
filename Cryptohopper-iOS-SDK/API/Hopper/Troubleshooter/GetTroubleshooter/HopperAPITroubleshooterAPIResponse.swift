//
//  HopperAPIGetTroubleshooterResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 23/10/2023.
//

import Foundation

class HopperAPITroubleshooterAPIResponse : Codable {
    
    var data : HopperAPITroubleshooterData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

class HopperAPITroubleshooterData : Codable {
    
    var troubleshooter : [TroubleshooterItem]?
    
    private enum CodingKeys: String, CodingKey {
        case troubleshooter = "troubleshooter"
    }
    
}
