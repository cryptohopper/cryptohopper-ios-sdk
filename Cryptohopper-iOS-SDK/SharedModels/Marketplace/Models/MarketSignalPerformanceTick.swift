//
//  MarketSignalPerformance.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation


class MarketSignalPerformanceTick : Codable {
    
    var signalTime : Date?
    var resultSum : Double?
    var resultSumPerct : Double?
    
    private enum CodingKeys: String, CodingKey {
        case signalTime = "signal_time"
        case resultSum = "result_sum"
        case resultSumPerct = "result_sum_perct"
    }
    
}
