//
//  HopperDevice.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 28/11/2022.
//

import Foundation

public class HopperDevice : Codable {
    
    public private(set) var id : Int?
    public private(set) var name : String?
    public private(set) var location : String?
    public private(set) var ipAddress : String?
    public private(set) var platform : String?
    public private(set) var state : Int?
    public private(set) var deviceId : String?
    public private(set) var lastActivity : Double?
    public private(set) var createdAt : Double?
    public private(set) var deletedAt : Double?
    public private(set) var expiration : Double?
    public private(set) var revokedAt : Double?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case location = "location"
        case ipAddress = "ipAddress"
        case platform = "platform"
        case state = "state"
        case deviceId = "deviceId"
        case lastActivity = "lastActivity"
        case createdAt = "createdAt"
        case deletedAt = "deletedAt"
        case expiration = "expiration"
        case revokedAt = "revokedAt"
    }

}
