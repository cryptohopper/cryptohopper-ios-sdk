//
//  V2Strategy.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation

public class V2Strategy : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var image : String?
    public private(set) var createdAt : String?
    public private(set) var updatedAt : String?
    public private(set) var risk : String?
    public private(set) var availableCoins : [String]?
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case image = "image"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case risk = "risk"
        case availableCoins = "availableCoins"
    }
    
}
