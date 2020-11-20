//
//  HopperAPIUpdateUserProfileRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIUpdateUserProfileRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(name : String, addressOne : String,addressTwo : String, city : String,region : String,country : String , postalCode : String,phone : String ,website : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user")
        addBodyItem(name: "name", value: name)
        addBodyItem(name: "address1", value: addressOne)
        addBodyItem(name: "address2", value: addressTwo)
        addBodyItem(name: "city", value: city)
        addBodyItem(name: "region", value: region)
        addBodyItem(name: "country", value: country)
        addBodyItem(name: "postalCode", value: postalCode)
        addBodyItem(name: "phone", value: phone)
        addBodyItem(name: "website", value: website)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
