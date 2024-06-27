//
//  HopperAPIGetPortalExchangePairMapsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 25/10/2023.
//

import Foundation

class HopperAPIGetPortalExchangePairMapsResponse: Codable {
    
    var maps : CHPortalMaps?
    
    private enum CodingKeys: String, CodingKey {
        case maps = "data"
    }
    
}

public class CHPortalMaps: Codable {
    
    public var exchangeKeys : [String:String]?
    public var marketMapping : [String:[String:CHPairName]]?
    
    private enum CodingKeys: String, CodingKey {
        case exchangeKeys = "exchange_keys"
        case marketMapping = "market_mapping"
    }
    
}

public class CHPairName : Codable {
    
    public var chPair : String?
    public var portalPair : String?
    
    private enum CodingKeys: String, CodingKey {
        case chPair = "ch_pair"
        case portalPair = "portal_pair"
    }
    
}
