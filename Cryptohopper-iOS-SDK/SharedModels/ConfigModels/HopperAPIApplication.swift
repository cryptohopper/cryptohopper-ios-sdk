//
//  HopperAPIApplication.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

class HopperAPIApplication: Codable {
    var id:String?
    var name:String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}
