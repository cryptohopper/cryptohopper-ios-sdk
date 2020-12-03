//
//  UserPurchase.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

public class UserPurchase : Codable {
    
    public private(set) var id : String?
    public private(set) var sellerId : String?
    public private(set) var buyerId : String?
    public private(set) var transactionId : String?
    public private(set) var itemId : String?
    public private(set) var itemType : String?
    public private(set) var status : String?
    public private(set) var price : String?
    public private(set) var subTotal : String?
    public private(set) var tax : String?
    public private(set) var total : String?
    public private(set) var userParams : String?
    public private(set) var taxId : String?
    public private(set) var created : String?
    public private(set) var currentVersion : String?
    public private(set) var autoUpdate : String?
    public private(set) var updateMonths : String?
    public private(set) var updateUntil : String?
    public private(set) var isEu : String?
    public private(set) var isEuBusiness :String?
    public private(set) var hidden : String?
    public private(set) var paid : String?
    public private(set) var payoutId : String?
    public private(set) var deleted : String?
    public private(set) var productName : String?
    
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
