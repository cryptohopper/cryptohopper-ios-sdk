//
//  CryptohopperMarketplace.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperMarketplace: NSObject {

    // ------------- GENERAL ----------------------------------------
    
    /// Download item from marketplace
    ///
    /// - Parameter marketplaceItemId: (optional) Marketplace Item Id
    public static func downloadItem(marketplaceItemId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDownloadItemRequest.init(marketPlaceItemId: marketplaceItemId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Home Page of Marketplace
    ///
    public static func getHomePage(completion: @escaping (Result<HopperAPIGetHomePageData?, Error>) -> Void) {
        HopperAPIGetHomePageRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- REVIEW ----------------------------------------
    
    /// Get Review
    ///
    ///- Parameter reviewId: (required) Review Id
    public static func getReview(reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetReviewRequest.init(reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Review
    ///
    ///- Parameter reviewId: (required) Review Id
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    ///- Parameter rating: (required) Rating
    public static func updateReview(reviewId : Int,reviewName : String,review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateReviewRequest.init(reviewId: reviewId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete Review
    ///
    ///- Parameter reviewId: (required) Review Id
    public static func deleteReview(reviewId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteReviewRequest.init(reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Save Market Review
    ///
    ///
    ///- Parameter marketplaceId: (required) Marketplace Id
    ///- Parameter marketItemType: (required) Market Item Type
    ///- Parameter replyTo: (required) Reply Review Id
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    ///- Parameter rating: (required) Rating
    public static func saveMarketReview(marketplaceId : Int,marketItemType : String,reviewName : String,review : String,rating : Int,replyTo : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISaveMarketReviewRequest.init(marketplaceId: marketplaceId, marketItemType: marketItemType, reviewName: reviewName, review: review, rating: rating, replyTo: replyTo).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Reply Market Review
    ///
    ///
    ///- Parameter reviewId: (required) Review Id
    ///- Parameter itemId: (required) Item Id
    ///- Parameter itemType: (required) Item Type
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    public static func replyMarketReview(reviewId : Int,itemId : Int,itemType : String,reviewName : String,review : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIReplyMarketReviewRequest.init(reviewId: reviewId, itemId: itemId, itemType: itemType, reviewName: reviewName, review: review).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- SIGNAL ----------------------------------------
    
    /// Get Available Signals
    ///
    ///
    public static func getAvailableSignals(completion: @escaping (Result<[MarketSignal]?, Error>) -> Void) {
        HopperAPIGetAvailableSignalsRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get  Signal
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getSignal(signalId : Int ,completion: @escaping (Result<MarketSignal?, Error>) -> Void) {
        HopperAPIGetSignalRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  Signal Distribution
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getSignalDistribution(signalId : Int ,completion: @escaping (Result<[Int]?, Error>) -> Void) {
        HopperAPIGetSignalDistributionRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  Signal Performance
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getSignalPerformance(signalId : Int ,completion: @escaping (Result<[MarketSignalPerformance]?, Error>) -> Void) {
        HopperAPIGetSignalPerformanceRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get  One Review For Signal
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    ///- Parameter reviewId: (required) Review Id
    public static func getOneReviewForSignal(signalId : Int ,reviewId :Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewRequest.init(signalId: signalId,reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  Marketplace Seller
    ///
    ///
    ///- Parameter sellerId: (required) Seller Id
    public static func getMarketplaceSeller(sellerId : String,completion: @escaping (Result<MarketplaceSeller?, Error>) -> Void) {
        HopperAPIGetMarketSellerRequest.init(id: sellerId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Post Signal Review
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    ///- Parameter rating: (required) Rating 1-2-3-4-5
    public static func postSignalReview(signalId : Int ,reviewName :String,review : String, rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostSignalReviewRequest.init(signalId: signalId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  One Review For Signal
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getSignalStats(signalId : Int,completion: @escaping (Result<MarketSignalStat?, Error>) -> Void) {
        HopperAPIGetSignalStatsRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- STRATEGY ----------------------------------------
    
    
    /// Get Available Strategies
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getAvailableStrategies(completion: @escaping (Result<[MarketStrategy]?, Error>) -> Void) {
        HopperAPIGetAvailableStrategiesRequest.init("").request { (data) in
            completion(.success(data.data?.strategy))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  Strategies
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getStrategy(strategyId : Int ,completion: @escaping (Result<MarketStrategy?, Error>) -> Void) {
        HopperAPIGetStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get  Strategy Reviews
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    ///- Parameter reviewId: (required) Review Id
    public static func getOneStrategyReview(strategyId : Int ,reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewForStrategyRequest.init(strageyId: strategyId,reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Post Strategy Review
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    ///- Parameter rating: (required) Rating 1-2-3-4-5
    public static func postStrategyReview(strategyId : Int ,reviewName : String, review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostStrategyReviewRequest.init(strategyId: strategyId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    
    // ------------- Template ----------------------------------------
    
    
    /// Get Available Templates
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getAvailableTemplates(completion: @escaping (Result<[MarketplaceTemplate]?, Error>) -> Void) {
        HopperAPIGetAvailableTemplatesRequest.init("").request({ (resp) in
            completion(.success(resp.data?.templates))
        }, { (err) in
            completion(.failure(err))
        })
    }
    
    
    /// Get Template
    ///
    ///
    ///- Parameter signalId: (required) Signal Id
    public static func getMarketTemplate(templateId : Int,completion: @escaping (Result<MarketplaceTemplate?, Error>) -> Void) {
        HopperAPIGetTemplateRequest.init(templateId: templateId).request({ (resp) in
            completion(.success(resp.data))
        }, { (err) in
            completion(.failure(err))
        })
    }
    
    
    /// Get  Template Reviews
    ///
    ///
    ///- Parameter templateId: (required) Template Id
    ///- Parameter reviewId: (required) Review Id
    public static func getOneTemplateReview(templateId : Int ,reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewForTemplateRequest.init(templateId: templateId, reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Post Template Review
    ///
    ///
    ///- Parameter templateId: (required) Template Id
    ///- Parameter reviewName: (required) Review Name
    ///- Parameter review: (required) Review Message
    ///- Parameter rating: (required) Rating 1-2-3-4-5
    public static func postTemplateReview(templateId : Int ,reviewName : String, review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostTemplateReviewRequest.init(templateId: templateId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
}
