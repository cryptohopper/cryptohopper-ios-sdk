//
//  HopperAPIGetUserPurchasesResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserPurchasesResponse : Codable {
    
    var purchases : [UserPurchase]?
    
    private enum CodingKeys: String, CodingKey {
        case purchases = "data"
    }
    
}
