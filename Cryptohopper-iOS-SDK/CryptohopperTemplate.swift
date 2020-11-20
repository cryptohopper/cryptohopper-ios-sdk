//
//  CryptohopperTemplate.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 05/11/2020.
//

import Foundation
import UIKit

//Wrapper Base Object
@objc public class CryptohopperTemplate: NSObject {

    // ------------- GENERAL ----------------------------------------

    
    /// Get Templates
    ///
    public static func getTemplates(completion: @escaping (Result<[Template]?, Error>) -> Void) {
        HopperAPIGetTemplatesRequest.init("").request { (data) in
            completion(.success(data.data?.templates))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Basic Templates
    ///
    public static func getBasicTemplates(completion: @escaping (Result<[BasicTemplate]?, Error>) -> Void) {
        HopperAPIGetBasicTemplatesRequest.init("").request { (data) in
            completion(.success(data.basicTemplates))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get Basic Templates For Exchange
    ///
    ///- Parameter exchange: (required) exchange
    public static func getBasicTemplateForExchange(exchange : String,completion: @escaping (Result<[BasicTemplate]?, Error>) -> Void) {
        HopperAPIGetBasicTemplateForExchangeRequest.init(exchange: exchange).request { (data) in
            completion(.success(data.basicTemplates))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Get One Template
    ///
    ///- Parameter templateId: (required) templateId
    public static func getOneTemplate(templateId : Int,completion: @escaping (Result<Template?, Error>) -> Void) {
        HopperAPIGetOneTemplateRequest.init(templateId: templateId).request { (data) in
            completion(.success(data.template))
        } _: { (err) in
            completion(.failure(err))
        }
    }

    
    /// Save Template
    ///
    ///- Parameter hopperId: (required) hopper id
    ///- Parameter saveAs: (required) save as
    ///- Parameter name: (required) name
    ///- Parameter description: (required) description
    public static func saveTemplate(hopperId : Int,saveAs : Int,name : String,description : String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPISaveTemplateRequest.init(hopperId: hopperId, saveAs: saveAs, name: name, description: description).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
    /// Delete Template
    ///
    ///- Parameter templateId: (required) templateId
    public static func deleteTemplate(templateId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteTemplateRequest.init(templateId: templateId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Change Image Of Template
    ///
    ///- Parameter templateId: (required) templateId
    ///- Parameter image: (required) image url
    public static func changeImageOfTemplate(templateId : Int,image: String,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIChangeImageOfTemplateRequest.init(templateId: templateId,image: image).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Load Template into Hopper
    ///
    ///- Parameter templateId: (required) template id
    ///- Parameter hopperId: (required) hopper id
    public static func loadTemplateIntoHopper(templateId : Int,hopperId: Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPILoadTemplateRequest.init(templateId: templateId,hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    // ------------- Market ----------------------------------------
    
    
    /// Get Market Templates
    ///
    public static func getMarketTemplates(completion: @escaping (Result<[MarketTemplate]?, Error>) -> Void) {
        HopperAPIGetMarketTemplatesRequest.init("").request { (data) in
            completion(.success(data.data?.templates))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Get One Market Template
    ///
    ///- Parameter templateId: (required) templateId
    public static func getOneMarketTemplate(templateId : Int,completion: @escaping (Result<MarketTemplate?, Error>) -> Void) {
        HopperAPIGetOneMarketTemplateRequest.init(templateId: templateId).request { (data) in
            completion(.success(data.template))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Delete Market Template
    ///
    ///- Parameter templateId: (required) templateId
    public static func deleteMarketTemplate(templateId : Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPIDeleteMarketTemplateRequest.init(templateId: templateId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    /// Load Market Template into Hopper
    ///
    ///- Parameter templateId: (required) template id
    ///- Parameter hopperId: (required) hopper id
    public static func loadMarketTemplateIntoHopper(templateId : Int,hopperId: Int,completion: @escaping (Result<String?, Error>) -> Void) {
        HopperAPILoadMarketTemplateRequest.init(templateId: templateId,hopperId: hopperId).request { (data) in
            completion(.success(data.data))
        } _: { (err) in
            completion(.failure(err))
        }
    }
    
    
}
