//
//  HopperAPIError.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPIError: Codable {

    var errCode:Int?
    var errMessage:String?
    var status:Int?
    
    private enum CodingKeys: String, CodingKey {
        case errCode = "error"
        case errMessage = "message"
        case status = "status"
    }
    
    var error:HopperError {
        guard let errCode = errCode else {return .UnknownError}
        switch errCode {
        case 400:
            return .BadRequest
        case 401:
            return .UnAuthorized
        case 403:
            return .EndpointForbidden
        case 404:
            return .EndpointNotFound
        case 405:
            return .EndpointNotAllowed
        case 429:
            return .APILimitExceed
        case 500:
            return .ServerError
        case 503:
            return .ServiceUnavailable
        default:
            return .UnknownError
        }
    }
    
}
