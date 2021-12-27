//
//  AI.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/12/2021.
//

import Foundation

public class AI : Codable {
    
    public private(set) var id : String?
    public private(set) var name : String?
    public private(set) var description : String?
    public private(set) var logo : String?
    public private(set) var createdDate : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case logo = "logo"
        case createdDate = "created_date"
    }
    
}

