//
//  V2User.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 27/05/2022.
//

import Foundation

public class V2User : Codable {
    
    public private(set) var id : Int?
    public private(set) var name : String?
    public private(set) var username : String?
    public private(set) var registeredAtAt : String?
    public private(set) var lastVisitedAt : String?
    public private(set) var email : String?
    public private(set) var country : String?
    public private(set) var blocked : Bool?
    
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case username = "username"
        case registeredAtAt = "registeredAtAt"
        case lastVisitedAt = "lastVisitedAt"
        case email = "email"
        case country = "country"
        case blocked = "blocked"
    }
    
}
