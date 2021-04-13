//
//  HopperAPICreateHopperResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/04/2021.
//

import Foundation
import UIKit

public class HopperAPICreateHopperResponse: Codable {
    
    public var data : HopperAPICreateHopperModel?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPICreateHopperModel : Codable {
    
    public var id : Int?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
    }
    
}
