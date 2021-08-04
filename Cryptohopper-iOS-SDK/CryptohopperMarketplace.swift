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
    
    /*!
    * @discussion Download item from marketplace
    *
    *  @param marketplaceItemId: (optional) Marketplace Item Id
    */
    public static func downloadItem(marketplaceItemId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDownloadItemRequest.init(marketPlaceItemId: marketplaceItemId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get Home Page of Marketplace
    *
    */
    public static func getHomePage(completion: @escaping (Result<HopperAPIGetHomePageData?, Error>) -> Void) {
        HopperAPIGetHomePageRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- REVIEW ----------------------------------------
    
    /*!
    * @discussion Get Review
    *
    * @param reviewId: (required) Review Id
    */
    public static func getReview(reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetReviewRequest.init(reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Update Review
    *
    * @param reviewId: (required) Review Id
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    * @param rating: (required) Rating
    */
    public static func updateReview(reviewId : Int,reviewName : String,review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateReviewRequest.init(reviewId: reviewId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Delete Review
    *
    * @param reviewId: (required) Review Id
    */
    public static func deleteReview(reviewId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteReviewRequest.init(reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Save Market Review
    *
    *
    * @param marketplaceId: (required) Marketplace Id
    * @param marketItemType: (required) Market Item Type
    * @param replyTo: (required) Reply Review Id
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    * @param rating: (required) Rating
    */
    public static func saveMarketReview(marketplaceId : Int,marketItemType : String,reviewName : String,review : String,rating : Int,replyTo : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISaveMarketReviewRequest.init(marketplaceId: marketplaceId, marketItemType: marketItemType, reviewName: reviewName, review: review, rating: rating, replyTo: replyTo).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Reply Market Review
    *
    *
    * @param reviewId: (required) Review Id
    * @param itemId: (required) Item Id
    * @param itemType: (required) Item Type
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    */
    public static func replyMarketReview(reviewId : Int,itemId : Int,itemType : String,reviewName : String,review : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIReplyMarketReviewRequest.init(reviewId: reviewId, itemId: itemId, itemType: itemType, reviewName: reviewName, review: review).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- SIGNAL ----------------------------------------
    
    /*!
    * @discussion Get Available Signals
    *
    *
     */
    public static func getAvailableSignals(completion: @escaping (Result<[MarketSignal]?, Error>) -> Void) {
        HopperAPIGetAvailableSignalsRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  Signal
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getSignal(signalId : Int ,completion: @escaping (Result<MarketSignal?, Error>) -> Void) {
        HopperAPIGetSignalRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }

    /*!
    * @discussion Get  Signal Distribution
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getSignalDistribution(signalId : Int ,completion: @escaping (Result<[Int]?, Error>) -> Void) {
        HopperAPIGetSignalDistributionRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  Signal Performance
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getSignalPerformance(signalId : Int ,completion: @escaping (Result<[MarketSignalPerformance]?, Error>) -> Void) {
        HopperAPIGetSignalPerformanceRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /*!
    * @discussion Get  One Review For Signal
    *
    *
    * @param signalId: (required) Signal Id
    * @param reviewId: (required) Review Id
    */
    public static func getOneReviewForSignal(signalId : Int ,reviewId :Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewRequest.init(signalId: signalId,reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  Marketplace Seller
    *
    *
    * @param sellerId: (required) Seller Id
    */
    public static func getMarketplaceSeller(sellerId : String,completion: @escaping (Result<MarketplaceSeller?, Error>) -> Void) {
        HopperAPIGetMarketSellerRequest.init(id: sellerId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Post Signal Review
    *
    *
    * @param signalId: (required) Signal Id
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    * @param rating: (required) Rating 1-2-3-4-5
    */
    public static func postSignalReview(signalId : Int ,reviewName :String,review : String, rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostSignalReviewRequest.init(signalId: signalId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  One Review For Signal
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getSignalStats(signalId : Int,completion: @escaping (Result<MarketSignalStat?, Error>) -> Void) {
        HopperAPIGetSignalStatsRequest.init(signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- STRATEGY ----------------------------------------
    
    /*!
    * @discussion Get Available Strategies
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getAvailableStrategies(completion: @escaping (Result<[MarketStrategy]?, Error>) -> Void) {
        HopperAPIGetAvailableStrategiesRequest.init("").request { (data) in
            completion(.success(data.data?.strategy))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  Strategies
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getStrategy(strategyId : Int ,completion: @escaping (Result<MarketStrategy?, Error>) -> Void) {
        HopperAPIGetStrategyRequest.init(strategyId: strategyId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Get  Strategy Reviews
    *
    *
    * @param signalId: (required) Signal Id
    * @param reviewId: (required) Review Id
    */
    public static func getOneStrategyReview(strategyId : Int ,reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewForStrategyRequest.init(strageyId: strategyId,reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /*!
    * @discussion Post Strategy Review
    *
    *
    * @param signalId: (required) Signal Id
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    * @param rating: (required) Rating 1-2-3-4-5
    */
    public static func postStrategyReview(strategyId : Int ,reviewName : String, review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostStrategyReviewRequest.init(strategyId: strategyId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    
    // ------------- Template ----------------------------------------
    
    /*!
    * @discussion Get Available Templates
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getAvailableTemplates(completion: @escaping (Result<[MarketplaceTemplate]?, Error>) -> Void) {
        HopperAPIGetAvailableTemplatesRequest.init("").request({ (resp) in
            completion(.success(resp.data?.templates))
        }, { (err) in
            completion(.failure(err))
        })
    }
    
    /*!
    * @discussion Get Template
    *
    *
    * @param signalId: (required) Signal Id
    */
    public static func getMarketTemplate(templateId : Int,completion: @escaping (Result<MarketplaceTemplate?, Error>) -> Void) {
        HopperAPIGetTemplateRequest.init(templateId: templateId).request({ (resp) in
            completion(.success(resp.data))
        }, { (err) in
            completion(.failure(err))
        })
    }
    
    /*!
    * @discussion Get  Template Reviews
    *
    *
    * @param templateId: (required) Template Id
    * @param reviewId: (required) Review Id
    */
    public static func getOneTemplateReview(templateId : Int ,reviewId : Int,completion: @escaping (Result<MarketReview?, Error>) -> Void) {
        HopperAPIGetOneReviewForTemplateRequest.init(templateId: templateId, reviewId: reviewId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }

    /*!
    * @discussion Post Template Review
    *
    *
    * @param templateId: (required) Template Id
    * @param reviewName: (required) Review Name
    * @param review: (required) Review Message
    * @param rating: (required) Rating 1-2-3-4-5
    */
    public static func postTemplateReview(templateId : Int ,reviewName : String, review : String,rating : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPostTemplateReviewRequest.init(templateId: templateId, reviewName: reviewName, review: review, rating: rating).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
}
