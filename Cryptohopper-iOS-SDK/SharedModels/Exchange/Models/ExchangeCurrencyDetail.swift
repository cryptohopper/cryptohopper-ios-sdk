//
//  ExchangeCurrencyDetail.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class ExchangeCurrencyDetail : Codable {
    
    var id : Int?
    var name : String?
    var txFee : String?
    var minConf : String?
    var depositAddress : String?
    var disabled : Int?
    var delisted : Int?
    var frozen : Int?
    var notice : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case txFee = "txFee"
        case minConf = "minConf"
        case depositAddress = "depositAddress"
        case disabled = "disabled"
        case delisted = "delisted"
        case frozen = "frozen"
        case notice = "notice"
    }
    
}
