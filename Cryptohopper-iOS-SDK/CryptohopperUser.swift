//
//  CryptohopperUser.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperUser: NSObject {

    // ------------- GENERAL ----------------------------------------

    
    /// Get User Profile
    ///
    public static func getUserProfile(completion: @escaping (Result<UserProfile?, Error>) -> Void) {
        HopperAPIGetUserProfileRequest.init("").request { (data) in
            completion(.success(data.userProfile))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Forget Password
    //
    public static func forgetPassword(email :String, completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIForgetPasswordRequest.init(email: email).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Update User Profile
    ///
    ///- Parameter name: (required) name
    ///- Parameter addressOne: (required) address one
    ///- Parameter addressTwo: (required) address two
    ///- Parameter city: (required) city
    ///- Parameter region: (required) region
    ///- Parameter country: (required) country
    ///- Parameter postalCode: (required) postal code
    ///- Parameter phone: (required) phone
    ///- Parameter website: (required) website
    public static func updateUserProfile(name : String,addressOne : String,addressTwo : String,city : String,region : String,country : String,postalCode : String,phone : String,website : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIUpdateUserProfileRequest.init(name: name, addressOne: addressOne, addressTwo: addressTwo, city: city, region: region, country: country, postalCode: postalCode, phone: phone, website: website).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Available Credits
    ///
    public static func getAvailableCredits(completion: @escaping (Result<Int?, Error>) -> Void) {
        HopperAPIGetAvailableCreditsRequest.init("").request { (data) in
            completion(.success(data.credit))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get User Email
    ///
    public static func getUserEmail(completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIGetUserEmailRequest.init("").request { (data) in
            completion(.success(data.email))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get User Email
    ///
    ///- Parameter email: (required) email
    public static func changeEmail(email : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIChangeEmailRequest.init(email: email).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Enable Mobile Push Notifications
    ///
    ///- Parameter enableAll: (required) enable all permissions
    ///- Parameter permissions: (required)  enable with some permissions
    public static func enableMobilePushNotification(enableAll : Bool,permissions : [PushNotificationPermissions],completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIEnablePushNotificationRequest.init(enableAll: enableAll, permissions: permissions).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get User Id
    ///
    public static func getUserId(completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIGetUserIdRequest.init("").request { (data) in
            completion(.success(data.id))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get User Notifications
    ///
    public static func getUserNotifications(completion: @escaping (Result<[UserNotification]?, Error>) -> Void) {
        HopperAPIGetUserNotificationsRequest.init("").request { (data) in
            completion(.success(data.notifications))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Change Password
    ///
    ///- Parameter newPassword: (required) your new password
    public static func changePassword(newPassword : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIChangePasswordRequest.init(password: newPassword).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get User Purchases
    ///
    ///
    public static func getUserPurchases(completion: @escaping (Result<[UserPurchase]?, Error>) -> Void) {
        HopperAPIGetUserPurchasesRequest.init("").request { (data) in
            completion(.success(data.purchases))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Change Password
    ///
    ///- Parameter name: (required) name
    ///- Parameter email: (required) email
    ///- Parameter username: (required) username
    ///- Parameter subscribeNewsletter: (required) subscribe newsletter
    ///- Parameter password: (required) password
    public static func registerUser(name : String, email : String, username : String, subscribeNewsLetter : Bool , password : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIRegisterUserRequest.init(name: name, email: email, username: username, subscribe_newsletter: subscribeNewsLetter, password: password).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Resend Activation Email
    ///
    ///
    ///- Parameter email: (required) email
    ///- Parameter username: (required) username
    public static func resendActivationEmail(email : String, username : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIResendActivationEmailRequest.init(email: email, username: username).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get User Transactions
    ///
    ///
    public static func getUserTransactions(completion: @escaping (Result<[UserTransaction]?, Error>) -> Void) {
        HopperAPIGetUserTransactionsRequest.init("").request { (data) in
            completion(.success(data.transactions))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get User Metadata
    ///
    ///
    public static func getUserMetadata(completion: @escaping (Result<UserMetadata?, Error>) -> Void) {
        HopperAPIGetUserMetadataRequest.init("").request { (data) in
            completion(.success(data.metadata))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get User Metadata
    ///
    ///
    ///- Parameter code: (required) Two factor authentication code
    public static func validateTwoFactorAuth(code : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIValidateTwoFactorAuthRequest.init(code: code).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    // ------------- Subscription ----------------------------------------
    
    /// Get All User Subscriptions
    ///
    ///
    public static func getAllUserSubscriptions(completion: @escaping (Result<[UserSubscription]?, Error>) -> Void) {
        HopperAPIGetAllUserSubscriptionsRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get One Subscription
    ///
    ///
    ///- Parameter subscriptionId: (required) Subscription Id
    public static func getOneUserSubscriptions(subscriptionId : Int, completion: @escaping (Result<UserSubscription?, Error>) -> Void) {
        HopperAPIGetOneUserSubscriptionRequest.init(subscriptionId: subscriptionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get All Subscription Plans
    ///
    ///
    public static func getAllSubscriptionPlans(completion: @escaping (Result<[SubscriptionPlan]?, Error>) -> Void) {
        HopperAPIGetAllSubscriptionPlansRequest.init("").request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get One Subscription Plan
    ///
    ///
    ///- Parameter planId: (required) Plan Id
    public static func getOneSubscriptionPlan(planId: Int,completion: @escaping (Result<SubscriptionPlan?, Error>) -> Void) {
        HopperAPIGetOneSubscriptionPlanRequest.init(planId: planId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Assign Subscriotion
    ///
    ///
    ///- Parameter hopperId: (required) Hopper Id
    ///- Parameter subscriptionId: (required) Subscription Id
    public static func assignSubscription(hopperId : Int, subscriptionId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIAssignSubscriptionRequest.init(hopperId: hopperId, subscriptionId: subscriptionId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
}
