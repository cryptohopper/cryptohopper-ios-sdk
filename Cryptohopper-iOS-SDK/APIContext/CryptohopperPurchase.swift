//
//  CryptohopperPurchase.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 27/05/2021.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperPurchase: NSObject {

    /*!
     * @discussion purchase
     *
     * @param planId String if it's a signal
     * @param marketplaceId String id of the item
     * @param hopperId String your hopper's id
     * @param receipt Your receipt validation base64 encoded string
     */
    public static func purchase(planId: String?,marketplaceId: String?,hopperId: String?,receipt: String,completion: @escaping (Result<HopperAPIPurchaseResponse, Error>) -> Void) {
        HopperAPIPurchaseRequest.init(planId: planId, marketplaceId: marketplaceId, hopperId: hopperId, receipt: receipt).request { resp in
            completion(.success(resp))
        } _: { err in
            completion(.failure(err))
        }

    }
    
}
