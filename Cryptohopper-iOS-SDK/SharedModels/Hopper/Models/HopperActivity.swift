//
//  HopperActivity.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 21/02/2022.
//
import Foundation

public class HopperActivity: Codable {
    
    public private(set) var task : String?
    public private(set) var start : Int?
    public private(set) var time : String?
    
    private enum CodingKeys: String, CodingKey {
        case task = "task"
        case start = "start"
        case time = "time"
    }
    
}
