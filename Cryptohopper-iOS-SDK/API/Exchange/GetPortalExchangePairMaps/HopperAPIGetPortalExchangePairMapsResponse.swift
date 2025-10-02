//
//  HopperAPIGetPortalExchangePairMapsResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 25/10/2023.
//

import Foundation

class HopperAPIGetPortalExchangePairMapsResponse: Codable {
    var maps: CHPortalMaps?
    
    private enum CodingKeys: String, CodingKey {
        case maps = "data"
    }
}

public class CHPortalMaps: Codable {
    public var exchangeKeys: [String:String]?
    public var marketMapping: [String:[String:CHPairName]]?
    
    private enum CodingKeys: String, CodingKey {
        case exchangeKeys = "exchange_keys"
        case marketMapping = "market_mapping"
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Decode exchange_keys normally
        exchangeKeys = try container.decodeIfPresent([String:String].self, forKey: .exchangeKeys)
        
        // Custom decoding for market_mapping
        if let marketMappingContainer = try? container.nestedContainer(keyedBy: DynamicCodingKeys.self, forKey: .marketMapping) {
            var mapping = [String:[String:CHPairName]]()
            
            for key in marketMappingContainer.allKeys {
                if let exchangePairs = try? marketMappingContainer.decode([String:CHPairName].self, forKey: key) {
                    mapping[key.stringValue] = exchangePairs
                }
            }
            
            marketMapping = mapping
        }
    }
    
    // Need to add a default initializer since we have a custom decoder
    public init() {
        exchangeKeys = nil
        marketMapping = nil
    }
}

// Helper for dynamic keys
private struct DynamicCodingKeys: CodingKey {
    var stringValue: String
    var intValue: Int?
    
    init?(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }
    
    init?(intValue: Int) {
        return nil
    }
}

public class CHPairName: Codable {
    public var chPair: String?
    public var portalPair: String?
    public var base: String?
    public var quote: String?
    
    private enum CodingKeys: String, CodingKey {
        case chPair = "ch_pair"
        case portalPair = "portal_pair"
        case base = "base"
        case quote = "quote"
    }
    
    // Add initializer for completeness
    public init() {
        chPair = nil
        portalPair = nil
        base = nil
        quote = nil
    }
}
