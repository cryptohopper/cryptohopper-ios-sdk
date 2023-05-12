//
//  CryptohopperV2Onboarding.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 23/05/2022.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperV2Onboarding: NSObject {

    
    
    public static func initOnboarding(exchangeId : Int , apiDetails : [String:Any] , isPaperTrading : Bool , quoteCurrency : String, completion: @escaping (Result<Int?, Error>) -> Void) {
        HopperAPIV2OnboardingInitRequest.init(exchangeId: exchangeId, apiDetails: apiDetails, isPaperTrading: isPaperTrading, quoteCurrency: quoteCurrency).request { (response) in
            completion(.success(response.id))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func editOnboarding(hopperId : Int,exchangeId : Int , apiDetails : [String:Any] , isPaperTrading : Bool , quoteCurrency : String, completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIV2OnboardingEditRequest.init(hopperId: hopperId, exchangeId: exchangeId, apiDetails: apiDetails, isPaperTrading: isPaperTrading, quoteCurrency: quoteCurrency).request { (_) in
            completion(.success("Success"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    public static func createOnboardingHopper(hopperId : Int, isBuyingEnabled : Bool , isSellingEnabled : Bool , isHopperEnabled : Bool,isPortfolioSyncEnabled: Bool, isPaperTrading : Bool , quoteCurrency : String, signallerId : Int? , riskLevel : String?, completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIV2OnboardingCreateRequest.init(hopperId: hopperId, isBuyingEnabled: isBuyingEnabled, isSellingEnabled: isSellingEnabled, isHopperEnabled: isHopperEnabled,isPortfolioSyncEnabled : isPortfolioSyncEnabled, isPaperTrading: isPaperTrading, quoteCurrency: quoteCurrency, signallerId: signallerId, riskLevel: riskLevel).request { (_) in
            completion(.success("Success"))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    

    
}
