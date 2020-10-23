//
//  HopperAPIConfigurationManager.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation


class HopperAPIConfigurationManager {
    
    static let shared = HopperAPIConfigurationManager()
    private (set) var config:HopperAPIConfiguration
    
    private init() {
        config = HopperAPIConfiguration()
    }
    
}
