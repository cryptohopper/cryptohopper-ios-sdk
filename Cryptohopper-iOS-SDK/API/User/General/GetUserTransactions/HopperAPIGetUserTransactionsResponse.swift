//
//  HopperAPIGetUserTransactionsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIGetUserTransactionsResponse : Codable {
    
    var transactions : [UserTransaction]?
    
    private enum CodingKeys: String, CodingKey {
        case transactions = "data"
    }
    
}
