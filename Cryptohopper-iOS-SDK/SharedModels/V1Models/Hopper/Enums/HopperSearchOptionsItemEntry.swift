//
//  HopperSearchOptionsItemEntry.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public enum HopperSearchOptionsItemEntry : String,Codable {
    
    case error = "error"
    case info = "info"
    
    private enum CodingKeys: String, CodingKey {
        case error = "error"
        case info = "info"
    }
    
}
