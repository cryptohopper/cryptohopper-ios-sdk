//
//  HopperAPIGetMarketSellerResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 12/02/2021.
//

import Foundation

class HopperAPIGetMarketSellerResponse: Codable {
    
    var data : MarketplaceSeller?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
