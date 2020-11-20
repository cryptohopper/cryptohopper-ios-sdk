//
//  UserMetadata.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserMetadata : Codable {
    
    var id : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
    }
    
}
