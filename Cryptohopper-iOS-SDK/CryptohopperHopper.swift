//
//  CryptohopperHopper.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperHopper: NSObject {

    // ------------- GENERAL ----------------------------------------
    
    /// Gets all hoppers in your account with defined filter parameters , if you send parameters as nill than you get all hoppers
    ///
    /// - Parameter name: (optional)  Hopper's name as a filter
    /// - Parameter exchange: (optional) Exchange as a  filter with type HopperConfigExchange
    /// - Parameter enabled: (optional) Filter as if hooper is enabled or disabled, 0 if disabled , 1 if enabled
    public static func getAllHoppers(name : String?,exchange : HopperConfigExchange? , enabled : Int?,completion: @escaping (Result<[Hopper]?, Error>) -> Void) {
        HopperAPIGetAllHoppersRequest.init(name: name, exchange: exchange, enabled: enabled).request { (hoppers) in
            completion(.success(hoppers.data?.hoppers))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Gets one hopper by id
    ///
    /// - Parameter hopperId: (required) Hopper's id
    public static func getHopper(hopperId : Int,completion: @escaping (Result<Hopper?, Error>) -> Void) {
        HopperAPIGetSingleHopperRequest.init(hopperId: hopperId).request { (hopper) in
            completion(.success(hopper.data?.hopper))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Create new Hopper with parameters
    ///
    /// - Parameter name:  (required) Hopper name
    /// - Parameter enabled: (optional) Select if hopper is enabled or disabled when you created it . 1 is enabled , 0 is disabled.
    /// - Parameter templateId: (optional) Hopper templateId if you are creating hopper from a template
    /// - Parameter apiConfig: (optional) Hopper api config defined with HopperConfigAPIConfig
    /// - Parameter config: (optional) Hopper config defined with HopperConfig object
    public static func createHopper(name: String, enabled: Int?, templateId: Int?, apiConfig: HopperConfigAPIConfig?, config: HopperConfig?,completion: @escaping (Result<HopperAPICreateHopperResponse?, Error>) -> Void) {
        HopperAPICreateHopperRequest.init(name: name, enabled: enabled, templateId: templateId, apiConfig: apiConfig, config: config).request { (message) in
            completion(.success(message))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper id
    /// - Parameter name:  (optional) Hopper name
    /// - Parameter enabled: (optional) Select if hopper is enabled or disabled when you created it . 1 is enabled , 0 is disabled.
    /// - Parameter templateId: (optional) Hopper templateId if you are creating hopper from a template
    /// - Parameter apiConfig: (optional) Hopper api config defined with HopperConfigAPIConfig
    /// - Parameter config: (optional) Hopper config defined with HopperConfig object
    public static func updateHopper(hopperId : String,name: String?, enabled: Int?, apiConfig: HopperConfigAPIConfig?, config: HopperConfig?,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateHopperRequest.init(hopperId: hopperId, name: name, enabled: enabled, apiConfig: apiConfig).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func deleteHopper(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteHopperRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Change Hopper Image
    ///
    /// - Parameter hopperId:  (required) Hopper id
    /// - Parameter image:  (required) Image Url
    public static func changeHopperImage(hopperId : String,image : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIChangeHopperImageRequest.init(hopperId: hopperId, image: image).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Disable Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func disableHopper(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDisableHopperRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Reset Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func resetHopper(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIResetHopperRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Set Hopper Disabled
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func setHopperAsDefault(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISetHopperAsDefaultRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Disable Hopper Buying
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func disableHopperBuying(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDisableHopperBuyingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Disable Hopper Papertrading
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func disableHopperPapertrading(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDisableHopperPapertradingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Disable Hopper Selling
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func disableHopperSelling(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDisableHopperSellingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Enable Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func enableHopper(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnableHopperRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Enable Hopper Buying
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func enableHopperBuying(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnableHopperBuyingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Enable Hopper Papertrading
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func enableHopperPapertrading(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnableHopperPapertradingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Enable Hopper Selling
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func enableHopperSelling(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnableHopperSellingRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Hopper Most Traded Currency
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func getHopperMostTradedCurrency(hopperId : String,completion: @escaping (Result<[HopperMostTradedModel]?, Error>) -> Void) {
        HopperAPIHopperMostTradedCurrencyRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Enable Hopper Panic
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func enableHopperPanic(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnableHopperPanicRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Disable Hopper Panic
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func disableHopperPanic(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDisableHopperPanicRequest.init(hopperId: hopperId).request { (message) in
            completion(.success(message.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- ORDER ----------------------------------------
    
    /// Get All Open Orders
    ///
    /// - Parameter hopperId:  (required) Hopper id
    public static func getAllOpenOrders(hopperId : String,completion: @escaping (Result<[HopperOrder]?, Error>) -> Void) {
        HopperAPIGetAllOpenOrdersRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get All Open Orders
    ///
    /// - Parameter hopperId:  (required) Hopper id
    /// - Parameter orderId:  (required) Order id
    public static func getOneOpenOrder(hopperId : String,orderId : String,completion: @escaping (Result<HopperOrder?, Error>) -> Void) {
        HopperAPIGetOneOpenOrderRequest.init(hopperId: hopperId, orderId: orderId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Create Order
    ///
    /// - Parameter hopperId:  (required) Hoppe Id
    /// - Parameter orderType:  (required) Order Type
    /// - Parameter marketOrder:  (required) Market Order
    /// - Parameter coin:  (required) Coin
    /// - Parameter price:  (required) Price
    /// - Parameter amount:  (required) Amount
    /// - Parameter orderTrigger:  (required) Order Trigger
    /// - Parameter percentageProfit:  (required) Percentage Profit
    /// - Parameter trailingBuy:  (required) Trailing Buy
    /// - Parameter trailingBuyPercentage:  (required) Trailing Buy Percentage
    public static func createOrder(hopperId : String,orderType : String,marketOrder : Int,coin : String,price : Double,amount : Double,orderTrigger : String,percentageProfit : Double,trailingBuy : Double,trailingBuyPercentage : Double,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICreateOrderRequest.init(hopperId: hopperId, orderType: orderType, marketOrder: marketOrder, coin: coin, price: price, amount: amount, orderTrigger: orderTrigger, percentageProfit: percentageProfit, trailingBuy: trailingBuy, trailingBuyPercentage: trailingBuyPercentage).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }

    /// Delete Multiple Orders
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter orderIds:  (required) Order Ids as int array
    public static func deleteMultipleOrders(hopperId : String,orderIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteMultipleOrdersRequest.init(hopperId: hopperId, orderIds: orderIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete One Order
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter orderId:  (required) Order Id
    public static func deleteMultipleOrders(hopperId : String,orderId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteOneOrderRequest.init(hopperId: hopperId, orderId: orderId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete All Open Orders
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func deleteAllOpenOrders(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteAllOpenOrdersRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Cancel TSB Order
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter orderId:  (required) Order Id
    public static func cancelTsbOrder(hopperId : String,orderId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICancelTSBOrderRequest.init(hopperId: hopperId, orderId: orderId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Cancel Order
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter orderId:  (required) Order Id
    public static func cancelOrder(hopperId : String,orderId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICancelOrderRequest.init(hopperId: hopperId, orderId: orderId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- PAPERTRADING ----------------------------------------
    
    
    /// Deposit Papertrading Account
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter coin:  (required) Coin example: BTC
    /// - Parameter amount:  (required) Deposit Amount
    public static func depositPapertradingAccount(hopperId : String,coin : String,amount : Double,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPapertradingDepositRequest.init(id: hopperId, coin: coin, amount: amount).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Withdraw Papertrading Account
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter coin:  (required) Coin example: BTC
    /// - Parameter amount:  (required) Deposit Amount
    public static func withdrawPapertradingAccount(hopperId : String,coin : String,amount : Double,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPapertradingWithdrawRequest.init(id: hopperId, coin: coin, amount: amount).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Reset Papertrading Account
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func resetPapertradingAccount(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPapertradingResetRequest.init(id: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- POSITION ----------------------------------------
    
    
    /// Delete Multiple Short Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids as int array
    public static func deleteMultipleShortPositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteMultipleShortPositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete One Short Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    public static func deleteOneShortPosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteOneShortPositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Close Multiple Short Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids as int array
    public static func closeMultipleShortPositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICloseMultipleShortPositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Close One Short Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    public static func closeOneShortPositions(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICloseOneShortPositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get All Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getAllPositions(hopperId : String,completion: @escaping (Result<[HopperPosition]?, Error>) -> Void) {
        HopperAPIGetAllPositionsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get All Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Hopper Id
    public static func getOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<HopperPosition?, Error>) -> Void) {
        HopperAPIGetOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Short Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    /// - Parameter takeProfit:  (required) Take Profit
    /// - Parameter stopLoss:  (required) Stop Loss
    /// - Parameter stopLossPercentage:  (required) Stop Loss Percentage
    /// - Parameter trailingStopLoss:  (required) Trailing Stop Loss
    /// - Parameter trailingStopLossPercentage:  (required) Trailing Stop Loss Percentage
    /// - Parameter trailingStopLossArm:  (required) Trailing Stop Loss Arm
    /// - Parameter autoClose:  (required) Auto Close
    /// - Parameter autoCloseTime:  (required) Auto Close Time
    public static func updatePosition(hopperId : String,positionId : Int,takeProfit : Int,stopLoss:Int,stopLossPercentage : Int,trailingStopLoss : Int,trailingStopLossPercentage : Int,trailingStopLossArm : Int,autoClose :Int,autoCloseTime : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdatePositionRequest.init(hopperId: hopperId, positionId: positionId, takeProfit: takeProfit, stopLoss: stopLoss, stopLossPercentage: stopLossPercentage, trailingStopLoss: trailingStopLoss, trailingStopLossPercentage: trailingStopLossPercentage, trailingStopLossArm: trailingStopLossArm, autoClose: autoClose, autoCloseTime: autoCloseTime).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Short Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter shortId:  (required) Position Id
    /// - Parameter takeProfit:  (required) Take Profit
    /// - Parameter stopLoss:  (required) Stop Loss
    /// - Parameter stopLossPercentage:  (required) Stop Loss Percentage
    /// - Parameter trailingStopLoss:  (required) Trailing Stop Loss
    /// - Parameter trailingStopLossPercentage:  (required) Trailing Stop Loss Percentage
    /// - Parameter trailingStopLossArm:  (required) Trailing Stop Loss Arm
    /// - Parameter autoClose:  (required) Auto Close
    /// - Parameter autoCloseTime:  (required) Auto Close Time
    public static func updateShortPosition(hopperId : String,shortId : Int,takeProfit : Int,stopLoss:Int,stopLossPercentage : Int,trailingStopLoss : Int,trailingStopLossPercentage : Int,trailingStopLossArm : Int,autoClose :Int,autoCloseTime : Int,autoRemove : Int, autoRemoveTime: Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateShortPositionRequest.init(hopperId: hopperId, shortId: shortId, takeProfit: takeProfit, stopLoss: stopLoss, stopLossPercentage: stopLossPercentage, trailingStopLoss: trailingStopLoss, trailingStopLossPercentage: trailingStopLossPercentage, trailingStopLossArm: trailingStopLossArm, autoCloseTime: autoCloseTime,autoRemoveTime:  autoRemoveTime).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Hold Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getHoldPositions(hopperId : String,completion: @escaping (Result<[HopperPosition]?, Error>) -> Void) {
        HopperAPIGetHoldPositionsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Hold Multiple Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func holdOnePosition(hopperId : String,positionId : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIHoldMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Hold One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    public static func holdOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIHoldOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Unsynced Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getUnsyncedPositions(hopperId : String,completion: @escaping (Result<HopperAPIGetUnsyncedPositionResponseData?, Error>) -> Void) {
        HopperAPIGetUnsyncedPositionRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Sync Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter currency:  (required) currency
    /// - Parameter amount:  (required) amount
    /// - Parameter rate:  (required) rate
    public static func syncPosition(hopperId : String,currency: String,amount: Double, rate : Double,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISyncPositionRequest.init(hopperId: hopperId, currency: currency, amount: amount, rate: rate).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Sync Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter currency:  (required) currency
    /// - Parameter amount:  (required) amount
    /// - Parameter rate:  (required) rate
    public static func editStartBalance(hopperId : String,balance : Double,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEditStartBalanceRequest.init(hopperId: hopperId, balance: balance).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Merge Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func mergePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIMergePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get Release Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getReleasePositions(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIGetReleasePositionsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Release Multiple Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func releaseMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIReleaseMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Release One Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    public static func releaseOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIReleaseOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Remove Multiple Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func removeMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIRemoveMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Remove One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func removeOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIRemoveOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func deletePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeletePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Sell Multiple Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func sellMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISellMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Sell One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func sellOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISellOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Take Profit
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    /// - Parameter percentage:  (required) Percentage
    public static func takeProfit(hopperId : String,positionIds : [Int],percentage : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIPositionsTakeProfitRequest.init(hopperId: hopperId, positionIds: positionIds, percentageProfit: percentage).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Split Multiple Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func splitMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISplitMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Split One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func splitOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISplitOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get Short Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getShortPositions(hopperId : String,completion: @escaping (Result<[HopperShortPosition]?, Error>) -> Void) {
        HopperAPIGetShortsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get Reserved Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getReservedPositions(hopperId : String,completion: @escaping (Result<[HopperReserved]?, Error>) -> Void) {
        HopperAPIGetReservedPositionsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Short Multiple Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func shortMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIShortMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Short One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func shortOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIShortOnePositionRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// ActivateDCA Multiple Positions
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    /// - Parameter marketOrder:  (required) Market Order
    /// - Parameter trailingBuy:  (required) Trailing Buy
    /// - Parameter trailingBuyPercentage:  (required) Trailing Buy Percentage
    public static func activateDcaForMultiplePositions(hopperId : String,positionIds : [Int],marketOrder : Int,trailingBuy : Int,trailingBuyPercentage : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIActivateDCAForMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds,marketOrder: marketOrder, trailingBuy: trailingBuy, trailingBuyPercentage: trailingBuyPercentage).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// ActivateDCA One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Id
    /// - Parameter marketOrder:  (required) Market Order
    /// - Parameter trailingBuy:  (required) Trailing Buy
    /// - Parameter trailingBuyPercentage:  (required) Trailing Buy Percentage
    public static func activateDcaForOnePosition(hopperId : String,positionId : Int,marketOrder : Int,trailingBuy : Int,trailingBuyPercentage : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIActivateDCAForOnePositionRequest.init(hopperId: hopperId, positionId: positionId,marketOrder: marketOrder, trailingBuy: trailingBuy, trailingBuyPercentage: trailingBuyPercentage).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Short Multiple Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionIds:  (required) Position Ids
    public static func moveMultiplePositions(hopperId : String,positionIds : [Int],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIRemoveMultiplePositionsRequest.init(hopperId: hopperId, positionIds: positionIds).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Short One Position
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter positionId:  (required) Position Ids
    public static func moveOnePosition(hopperId : String,positionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIMoveOnePositionsToReservedRequest.init(hopperId: hopperId, positionId: positionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- SIGNAL ----------------------------------------
    
    
    /// Get Signals In Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getSignalsInHopper(hopperId : String,completion: @escaping (Result<[MarketSignal]?, Error>) -> Void) {
        HopperAPIGetSignalsInHopperRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data?.signals))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Signal by Id
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter signalId:  (required) Signal Id
    public static func getSignalById(hopperId : String,signalId : Int,completion: @escaping (Result<MarketSignal?, Error>) -> Void) {
        HopperAPIGetSignalByIdRequest.init(hopperId: hopperId, signalId: signalId).request { (data) in
            completion(.success(data.signal))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Subscribe To Signal
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter signalId:  (required) Signal Id
    public static func subscribeToSignal(hopperId : String,signalId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISubscribeToSignalRequest.init(hopperId: hopperId, signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Unsubscribe To Signal
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter signalId:  (required) Signal Id
    public static func unsubscribeFromSignal(hopperId : String,signalId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUnsubscribeToSignalRequest.init(hopperId: hopperId, signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Last Signal
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getLastSignal(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIGetLastSignalRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.signalLast))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Signal Config
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func updateSignalConfig(hopperId : String,signalId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateSignalConfigRequest.init(hopperId: hopperId,signalId: signalId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- STATS ----------------------------------------
    
    /// Get Hopper Stats
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getHopperStats(hopperId : String,completion: @escaping (Result<HopperStats?, Error>) -> Void) {
        HopperAPIGetHopperStatsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Dashboard Stats
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getDashboardStats(hopperId : String,completion: @escaping (Result<HopperDashboardStats?, Error>) -> Void) {
        HopperAPIGetHopperDashboardStatsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.stats))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Reset Hopper Stats
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func resetHopperStats(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIResetHopperStatsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- Subscription ----------------------------------------
    
    
    /// Get Subscription Of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getSubscription(hopperId : String,completion: @escaping (Result<HopperSubscription?, Error>) -> Void) {
        HopperAPIGetSubscriptionRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data?.subscription))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// ReAssign Of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func reAssignSubscription(hopperId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIReassignSubsriptionRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- Config Pool ----------------------------------------
    
    /// Get Config of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getConfig(hopperId : String,completion: @escaping (Result<HopperConfig?, Error>) -> Void) {
        HopperAPIGetConfigRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Config of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func updateConfig(hopperId : String,config: [String:Any],completion: @escaping (Result<HopperConfig?, Error>) -> Void) {
        HopperAPIUpdateConfigRequest.init(hopperId: hopperId, config: config).request { (data) in
            completion(.success(data.data?.hoppers))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get All Config Pools
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getAllConfigPools(hopperId : String,completion: @escaping (Result<[HopperConfigPool]?, Error>) -> Void) {
        HopperAPIGetAllConfigPoolsRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get One Config Pool
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getOneConfigPools(hopperId : String,poolId : String,completion: @escaping (Result<HopperConfigPool?, Error>) -> Void) {
        HopperAPIGetOneConfigPoolRequest.init(hopperId: hopperId, poolId: poolId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Create Config Pool
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter enabled:  (required) Enabled with object HopperEnabled
    /// - Parameter configPool:  (required) Config Pool
    public static func createConfigPool(hopperId : String,enabled : HopperEnabled,configPool : HopperConfigPool,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPICreatePoolConfigRequest.init(hopperId: hopperId, enabled: enabled, configPool: configPool).request { (data) in
            completion(.success(data.id))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Config Pool
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter enabled:  (required) Enabled with object HopperEnabled
    /// - Parameter configPool:  (required) Config Pool
    public static func updateConfigPool(hopperId : String,enabled : HopperEnabled,configPool : HopperConfigPool,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateConfigPoolRequest.init(hopperId: hopperId, enabled: enabled, configPool: configPool).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Update Config Pool
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    /// - Parameter poolId:  (required) ConfigPool Id
    public static func deleteConfigPool(hopperId : String,poolId : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteConfigPoolRequest.init(hopperId: hopperId, poolId: poolId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- Trade ----------------------------------------
    
    /// Get Trade History of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getTradeHistory(hopperId : String,completion: @escaping (Result<[HopperTradeHistory]?, Error>) -> Void) {
        HopperAPIGetTradeHistoryRequest.init(hopperId: hopperId).request { (data) in
            completion(.success(data.data?.trades))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Trade History By Id
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getTradeHistory(hopperId : String,tradeId : Int,completion: @escaping (Result<HopperOrder?, Error>) -> Void) {
        HopperAPIGetTradeHistoryByIdRequest.init(hopperId: hopperId,tradeId: tradeId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- Output ----------------------------------------
    
    /// Get Trade History of Hopper
    ///
    /// - Parameter hopperId:  (required) Hopper Id
    public static func getOutput(hopperId : String,dateFrom : Date , dateTo : Date, entryType: HopperSearchOptionsItemEntry , sortField : HopperSearchOptionsItemSortField,sortOrder : HopperSearchOptionsItemSortOrder, page : Int,perPage : Int,completion: @escaping (Result<[HopperOutput]?, Error>) -> Void) {
        HopperAPIGetOutputRequest.init(hopperId: hopperId, dateFrom: dateFrom, dateTo: dateTo, entryType: entryType, sortField: sortField, sortOrder: sortOrder, page: page, perPage: perPage).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    
}
