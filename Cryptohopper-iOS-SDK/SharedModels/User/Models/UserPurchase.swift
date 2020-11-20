//
//  UserPurchase.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserPurchase : Codable {
    
    var id : String?
    var sellerId : String?
    var buyerId : String?
    var transactionId : String?
    var itemId : String?
    var itemType : String?
    var status : String?
    var price : String?
    var subTotal : String?
    var tax : String?
    var total : String?
    var userParams : String?
    var taxId : String?
    var created : String?
    var currentVersion : String?
    var autoUpdate : String?
    var updateMonths : String?
    var updateUntil : String?
    var isEu : String?
    var isEuBusiness :String?
    var hidden : String?
    var paid : String?
    var payoutId : String?
    var deleted : String?
    var productName : String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case sellerId = "seller_id"
        case buyerId = "buyer_id"
        case transactionId = "transaction_id"
        case itemId = "item_id"
        case itemType = "item_type"
        case status = "status"
        case price = "price"
        case subTotal = "subtotal"
        case tax = "tax"
        case total = "total"
        case userParams = "user_params"
        case taxId = "tax_id"
        case created = "created"
        case currentVersion = "current_version"
        case autoUpdate = "auto_update"
        case updateMonths = "update_months"
        case updateUntil = "update_until"
        case isEu = "is_eu"
        case isEuBusiness = "eu_business"
        case hidden = "hidden"
        case paid = "paid"
        case payoutId = "payout_id"
        case deleted = "deleted"
        case productName = "product_name"
    }
    
}
