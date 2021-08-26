//
//  HopperAPIGetSignalChartDataResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 26/08/2021.
//

import Foundation

public class HopperAPIGetSignalChartDataResponse: Codable {
    
    var data : [String:[SignalChartData]]?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }

}

public class SignalChartData: Codable {
    
    public var signalTime : String?
    public var resultSum : String?
    public var resultSumPerct : String?
    
    private enum CodingKeys: String, CodingKey {
        case signalTime = "signal_time"
        case resultSum = "result_sum"
        case resultSumPerct = "result_sum_perct"
    }

}
