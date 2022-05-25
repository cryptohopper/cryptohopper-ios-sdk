//
//  V2Pair.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 25/05/2022.
//

import Foundation

public class V2Pair : Codable {
    
    public private(set) var pair : String?
    public private(set) var name : String?
    public private(set) var quote : String?
    public private(set) var minPrice : Double?
    public private(set) var maxPrice : Double?
    public private(set) var pricePrecision : Int?
    public private(set) var minQty : Double?
    public private(set) var maxQty : Double?
    public private(set) var minQtyQuote : Double?
    public private(set) var maxQtyQuote : Double?
    public private(set) var qtyPrecision : Int?
    
    
    private enum CodingKeys: String, CodingKey {
        case pair = "pair"
        case name = "name"
        case quote = "quote"
        case minPrice = "min_price"
        case maxPrice = "max_price"
        case pricePrecision = "price_precision"
        case minQty = "min_qty"
        case maxQty = "max_qty"
        case minQtyQuote = "min_qty_quote"
        case maxQtyQuote = "max_qty_quote"
        case qtyPrecision = "qty_precision"
    }
    
}
