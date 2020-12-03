//
//  HopperGeneralStats.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation

public class HopperDashboardStats : Codable {
    
    public private(set) var totalInvested : String?
    public private(set) var totalReturns : String?
    public private(set) var totalPositions : String?
    public private(set) var totalFees : String?
    
    private enum CodingKeys: String, CodingKey {
        case totalInvested = "total_invest"
        case totalReturns = "total_returns"
        case totalPositions = "total_positions"
        case totalFees = "total_fees"
    }

}
