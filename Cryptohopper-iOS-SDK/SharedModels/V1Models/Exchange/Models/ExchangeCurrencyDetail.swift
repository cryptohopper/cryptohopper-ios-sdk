//
//  ExchangeCurrencyDetail.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

public class ExchangeCurrencyDetail : Codable {
    
    public private(set) var id : Int?
    public private(set) var name : String?
//    public private(set) var txFee : String?
//    public private(set) var minConf : String?
//    public private(set) var depositAddress : String?
//    public private(set) var disabled : Int?
//    public private(set) var delisted : Int?
//    public private(set) var frozen : Int?
//    public private(set) var notice : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
//        case txFee = "txFee"
//        case minConf = "minConf"
//        case depositAddress = "depositAddress"
//        case disabled = "disabled"
//        case delisted = "delisted"
//        case frozen = "frozen"
//        case notice = "notice"
    }
    
}
