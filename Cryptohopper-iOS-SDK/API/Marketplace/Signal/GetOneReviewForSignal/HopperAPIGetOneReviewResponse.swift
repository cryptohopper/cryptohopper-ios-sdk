//
//  HopperAPIGetOneReviewResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetOneReviewResponse: Codable {
    
    var data : MarketReview?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

