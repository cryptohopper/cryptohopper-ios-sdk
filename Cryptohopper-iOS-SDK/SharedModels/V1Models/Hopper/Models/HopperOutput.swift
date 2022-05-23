//
//  HopperOutput.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 07/12/2020.
//

import Foundation

public class HopperOutput : Codable {
    
    public private(set) var logType : String?
    public private(set) var logOutput : String?
    public private(set) var logTime : Double?
    
    private enum CodingKeys: String, CodingKey {
        case logType = "log_type"
        case logOutput = "log_output"
        case logTime = "log_time"
    }

}
