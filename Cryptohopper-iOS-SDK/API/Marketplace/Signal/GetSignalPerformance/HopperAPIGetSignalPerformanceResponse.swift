//
//  HopperAPIGetSignalPerformanceResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//


import Foundation

class HopperAPIGetSignalPerformanceResponse: Codable {
    
    var data : [MarketSignalPerformance]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}
