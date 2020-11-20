//
//  HopperSearchOptionsItemSort.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public enum HopperSearchOptionsItemSortField : String,Codable {
    
    case entryDate = "entry_date"
    case entryType = "entry_type"
    
    private enum CodingKeys: String, CodingKey {
        case entryDate = "entry_date"
        case entryType = "entry_type"
    }
    
}
