//
//  MarketSignalPerformance.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

public class MarketSignalPerformanceTick : Codable {
    
    public private(set) var signalTime : String?
    public private(set) var resultSum : String?
    public private(set) var resultSumPerct : String?
    
    private enum CodingKeys: String, CodingKey {
        case signalTime = "signal_time"
        case resultSum = "result_sum"
        case resultSumPerct = "result_sum_perct"
    }
    
}

