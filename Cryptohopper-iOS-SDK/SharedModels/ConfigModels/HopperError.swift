//
//  HopperError.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

public enum HopperError: Error {
    case missingUrl
    case missingAccessToken
    case missingCrendetials
    case missingRefreshToken
    case AccessTokenExpired
    case InvalidAccessToken
    case InvalidSession
    case BadRequest
    case UnAuthorized
    case EndpointForbidden
    case EndpointNotFound
    case EndpointNotAllowed
    case APILimitExceed
    case ServerError
    case ServiceUnavailable
    case UnknownError
}

extension HopperError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .missingUrl:
            return "Missing url"
        case .missingAccessToken:
            return "Missing access token"
        case .missingCrendetials:
            return "Missing crendtials.You need to log-in again"
        case .missingRefreshToken:
            return "Missing refresh token"
        case .AccessTokenExpired:
            return "Access token expire"
        case .InvalidAccessToken:
            return "Invalid access token"
        case .UnknownError:
            return "Unknown error"
        case .InvalidSession:
            return "Invalid sesion"
        case .BadRequest:
            return "The server cannot or will not process the request due to an apparent client error."
        case .UnAuthorized:
            return "The request requires user authentication and has been refused due to invalid or missing API credential"
        case .EndpointForbidden:
            return "The server understood the request, but is refusing to fulfill it because you are not allowed to access it or your credentials have been revoked to access it."
        case .EndpointNotFound:
            return "The requested resource could not be found. This error can be due to a temporary or permanent condition."
        case .EndpointNotAllowed:
            return "The used request method is not supported by the requested API endpoint."
        case .APILimitExceed:
            return "The user has exceeded the API requests rate limit. Please consult our rate limit section to find out what our current request limits are."
        case .ServerError:
            return "An error happened in our server that prevents it from answering your request. Our developers will have their free coffee taken away for a week as a first warning..."
        case .ServiceUnavailable:
            return "Our servers could be experiencing a problem, and will not be able to fulfill your request."
        }
    }
    
}
