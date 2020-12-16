//
//  TAValue.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 11/12/2020.
//

import Foundation

public class TAValue : Codable {
    
    public private(set) var strategy : String?
    public private(set) var coin : String?
    public private(set) var strategyType : String?
    public private(set) var strategyId : String?
    public private(set) var values : [Double]?
    public private(set) var signals : [String]?
    public private(set) var indicators : [TAIndicator]?

    
    private enum CodingKeys: String, CodingKey {
        case strategy = "strategy"
        case coin = "coin"
        case strategyType = "strategy_type"
        case strategyId = "strategy_id"
        case values = "values"
        case signals = "signals"
        case indicators = "indicators"
    }

}

public class TAIndicator : Codable {
    
    public private(set) var config : TAIndicatorConfig?
    public private(set) var chartPeriod : String?
    public private(set) var type : String?
    public private(set) var name : String?
    
    private enum CodingKeys: String, CodingKey {
        case config = "config"
        case chartPeriod = "chartperiod"
        case type = "type"
        case name = "name"
    }
    
}

public class TAIndicatorConfig : Codable {
    
    public private(set) var candleValue : String?
    public private(set) var period : Int?
    public private(set) var fastK : Int?
    public private(set) var fastD : Int?
    public private(set) var fastDMatype : String?
    public private(set) var keepSignal : Int?
    
    private enum CodingKeys: String, CodingKey {
        case candleValue = "candle_value"
        case period = "period"
        case fastK = "fast_k"
        case fastD = "fast_d"
        case fastDMatype = "fast_d_matype"
        case keepSignal = "keep_signal"
    }
    
}
