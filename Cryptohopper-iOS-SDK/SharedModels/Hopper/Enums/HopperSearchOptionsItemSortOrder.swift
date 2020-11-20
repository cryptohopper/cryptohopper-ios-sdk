//
//  HopperSearchOptionsItemSortOrder.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public enum HopperSearchOptionsItemSortOrder : String,Codable {
    
    case ascending = "asc"
    case descending = "desc"
    
    private enum CodingKeys: String, CodingKey {
        case ascending = "asc"
        case descending = "desc"
    }
    
}
