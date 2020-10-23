//
//  HopperAPILoginResponse.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPIAuthenticationResponse: Codable {
    
    var accessToken:String?
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
    }
    
}
