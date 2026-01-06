//
//  AskAIPage.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

public class AskAIPage: Codable {
    
    public private(set) var key: String?
    public private(set) var name: String?
    
    private enum CodingKeys: String, CodingKey {
        case key = "key"
        case name = "name"
    }
    
}

