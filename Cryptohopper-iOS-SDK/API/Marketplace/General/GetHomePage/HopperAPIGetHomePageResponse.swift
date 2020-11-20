//
//  HopperAPIGetHomePageResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation
import Foundation

class HopperAPIGetHomePageResponse: Codable {
    
    var data : HopperAPIGetHomePageData?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

public class HopperAPIGetHomePageData: Codable {
    
    var featuredHome : [MarketItem]?
    var homeEditorsPick : [MarketItem]?
    var homeTopSignals : [MarketItem]?
    var homeBestRatedStrategies : [MarketItem]?
    var homeBestRatedTemplates : [MarketItem]?
    var homeBestRatedSignals : [MarketItem]?
    
    private enum CodingKeys: String, CodingKey {
        case featuredHome = "featured_home"
        case homeEditorsPick = "home_editors_pick"
        case homeTopSignals = "home_top_signals"
        case homeBestRatedStrategies = "home_best_rated_strategies"
        case homeBestRatedTemplates = "home_best_rated_templates"
        case homeBestRatedSignals = "home_best_rated_signals"
    }
    
}
