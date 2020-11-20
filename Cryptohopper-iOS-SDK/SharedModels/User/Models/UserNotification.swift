//
//  UserNotification.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserNotification : Codable {
    
    var id : String?
    var messageType : String?
    var title : String?
    var message : String?
    var link : String?
    var extraData : String?
    var date : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case messageType = "message_type"
        case title = "title"
        case message = "message"
        case link = "link"
        case extraData = "extra_data"
        case date = "date"
    }
    
}

