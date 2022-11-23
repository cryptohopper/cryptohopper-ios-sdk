//
//  HopperAPIRequest.swift
//  iOS SDK
//
//  Created by Kaan Baris Bayrak on 21/10/2020.
//

import Foundation
import UIKit

public enum HopperAPIHttpMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
    case PATCH = "PATCH"
}


typealias HopperAPIRequestFailClosure = (Error) -> ()
typealias HopperAPIEmptySuccessClosure = ()->()

class HopperAPIRequest<T:Codable> {

    typealias HopperAPIRequestSuccessClosure = (T) -> ()
    
    var path:String = "/"
    
    var httpMethod:HopperAPIHttpMethod {
        return .GET
    }
    
    var needsAuthentication:Bool {
        return true
    }
    
    var dateDecodingStrategy:JSONDecoder.DateDecodingStrategy {
        return .secondsSince1970
    }
    
    var isAuthenticationRequest:Bool = false
    var isV2Api:Bool = false
    
    private var httpHeaders:[String:String] = [
        "Content-Type":"application/json",
        "Accept":"application/json"
    ]
    
    private var queryItems:[URLQueryItem]?
    private var bodyItems:[String:Any]?
    
    
    var url: URL? {
        var components = URLComponents()
        components.scheme = HopperAPIConfigurationManager.shared.config.urlScheme
        if(isAuthenticationRequest){
            components.host = HopperAPIConfigurationManager.shared.config.authenticationHost
        }else{
            components.host = HopperAPIConfigurationManager.shared.config.host
        }
        
        if(isV2Api){
            components.host = HopperAPIConfigurationManager.shared.config.v2Host
        }
        
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
    
    func setIsAuthenticationRequest(isAuthenticationMethod : Bool){
        self.isAuthenticationRequest = isAuthenticationMethod
    }
    
    func addHeader(name:String, value:String) {
        httpHeaders[name] = value
    }
    
    func changeUrlPath(path: String,isV2Endpoint : Bool = false){
        self.path = path
        self.isV2Api = isV2Endpoint
    }
    
    
    func addQueryItem(name:String, value:String?) {
        if queryItems == nil {
            queryItems = []
        }
        queryItems?.append(.init(name: name, value: value))
    }
    
    func addBodyItem(name:String, value:Any) {
        if bodyItems == nil {
            bodyItems = [:]
        }
        bodyItems?[name] = value
    }
    
    func handleError(failClosure: HopperAPIRequestFailClosure?, error:Error) {
        if HopperAPIConfigurationManager.shared.config.debugModeEnabled {
            print(error.localizedDescription)
        }
        failClosure?(error)
    }
    
    private func generateRequest(url:URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = self.httpMethod.rawValue
        self.httpHeaders.forEach({request.setValue($0.value, forHTTPHeaderField: $0.key)})
               
        if let bodyItems = self.bodyItems, let bodyData = try? JSONSerialization.data(withJSONObject: bodyItems, options: []) {
           request.httpBody = bodyData
        }
        return request
    }
    
    func startRequest(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil) {
        guard let url = self.url else {
            self.handleError(failClosure: onFail, error: HopperError.missingUrl)
            return
        }
        let session = URLSession.shared
        let request = generateRequest(url: url)
        
        let task = session.dataTask(with: request) { (data, response, error) in
          
            if let error = error {
                onFail?(error)
            } else if let data = data {
                
                if HopperAPIConfigurationManager.shared.config.debugModeEnabled {
                    if let responseStr = String(data: data, encoding: .utf8) {
                        print(responseStr)
                    }
                }
                
                //On success
                let responseOK = {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = self.dateDecodingStrategy
                        let errCode = try? decoder.decode(HopperCommonMessageResponse.self, from: data)
                        if(errCode != nil){
                            if(
                                errCode?.error != nil &&
                                errCode?.status != nil
                            ){
                                let err = CustomError(localizedDescription: errCode?.message ?? "",code: errCode?.code)
                                onFail?(err)
                            }else{
                                let response = try decoder.decode(T.self , from: data)
                                onSuccess?(response)
                            }
                        }else{
                            let response = try decoder.decode(T.self , from: data)
                            onSuccess?(response)
                        }
                    } catch {
                        onFail?(error)
                    }
                }
                
                //On fail
                let apiError = {
                    do {
                        let decoder = JSONDecoder()
                        let dataStr = String(decoding: data, as: UTF8.self)
                        if(dataStr.contains("html") && dataStr.contains("403")){
                            let err = CustomError(localizedDescription: "IP Blocked")
                            onFail?(err)
                        }else{
                            decoder.dateDecodingStrategy = self.dateDecodingStrategy
                            let response = try decoder.decode(HopperAPIError.self , from: data)
                            onFail?(response.error)
                        }
                    } catch {
                        onFail?(error)
                    }
                }
                
                if let response = response as? HTTPURLResponse {
                    if response.statusCode >= 200 && response.statusCode < 300 {
                        responseOK()
                    }
                    else {
                        if(response.statusCode == 402){
                            self.triggerDeviceUnauthorized()
                        }
                        apiError()
                    }
                }
                

                
            }
        }
        
        task.resume()
    }
    
    
    func request(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil) {
        self.addRequiredHeaders()
        
        if(isV2Api){
            self.addV2Headers()
        }
        
        
        if needsAuthentication {
            self.authenticateAndRequestAgain(onSuccess, onFail)
        }else {
            startRequest({ (response) in
                onSuccess?(response)
            }) { (error) in
                if let error = error as? HopperError {
                    switch  error {
                    case .AccessTokenExpired,
                         .InvalidAccessToken,
                         .InvalidSession:
                        self.authenticateAndRequestAgain(onSuccess, onFail)
                    default:
                        onFail?(error)
                    }
                }else {
                    onFail?(error)
                }
            }
        }
    }
    
    func authenticateAndRequestAgain(_ onSuccess:HopperAPIRequestSuccessClosure? = nil, _ onFail:HopperAPIRequestFailClosure? = nil){
        HopperAPISessionManager.shared.checkAuthentication(onSuccess: {
            guard let accessToken = HopperAPISessionManager.shared.session?.accessToken else {
                self.handleError(failClosure: onFail, error: HopperError.missingAccessToken)
                return
            }
            
            if(self.isV2Api){
                self.addHeader(name: "Auth-Type", value: "oauth")
                self.addHeader(name: "Authorization", value: "Bearer \(accessToken)")
            }else{
                self.addHeader(name: "access-token", value: accessToken)
            }
        
            self.startRequest(onSuccess, onFail)
        }, onFail: onFail)
    }
    
    func addV2Headers(){
        self.addHeader(name: HopperAPIConfigurationManager.shared.config.v2ApiValidationKey, value: HopperAPIConfigurationManager.shared.config.v2ApiValidationValue)
    }
    
    func addRequiredHeaders(){
        self.addHeader(name: "Platform", value: "iOS")
        self.addHeader(name: "DeviceId", value: UIDevice.current.identifierForVendor!.uuidString)
        self.addHeader(name: HopperAPIConfigurationManager.shared.config.apiBasicValidationKey, value: HopperAPIConfigurationManager.shared.config.apiBasicValidationValue)
    }
    
    func triggerDeviceUnauthorized(){
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "CH_DEVICE_UNAUTHORIZED"), object: nil)
    }

}
