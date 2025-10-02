//
//  HopperAPIGetPortfolioBotsResponse.swift
//  Pods
//
//  Created by Can Erten on 09/04/2025.
//

import Foundation

class HopperAPIGetPortfolioBotsResponse: Codable {
    
    var data: GetPortfolioBotsResponse?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
}

class GetPortfolioBotsResponse: Codable {
    
    var portfolio: [MarketPortfolioBot]?
    
    private enum CodingKeys: String, CodingKey {
        case portfolio = "portfolio"
    }
}
