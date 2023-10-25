//
//  TroubleshooterItem.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan on 23/10/2023.
//

import Foundation

public class TroubleshooterItem : Codable {
    
    public private(set) var title : String?
    public private(set) var status : Int?
    public private(set) var desc : String?
    public private(set) var readmore : String?
    
    private enum CodingKeys: String, CodingKey {
        case title = "title"
        case status = "status"
        case desc = "description"
        case readmore = "readmore"
    }
    
}
