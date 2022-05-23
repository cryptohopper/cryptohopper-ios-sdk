//
//  UserNotification.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserNotification : Codable {
    
    public private(set) var id : String?
    public private(set) var messageType : String?
    public private(set) var title : String?
    public private(set) var message : String?
    public private(set) var link : String?
    //public private(set) var extraData : String?
    public private(set) var date : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case messageType = "message_type"
        case title = "title"
        case message = "message"
        case link = "link"
        //case extraData = "extra_data"
        case date = "date"
    }
    
}

