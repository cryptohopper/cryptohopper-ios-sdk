//
//  HopperAPIUpdateUserProfileRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 03/11/2020.
//

import Foundation

class HopperAPIUpdateUserProfileRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(name : String?, addressOne : String?,addressTwo : String?, city : String?,region : String?,country : String? , countryNationality : String?, postalCode : String?,phone : String? ,website : String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user")
        
        if(name != nil && name != ""){
            addBodyItem(name: "name", value: name!)
        }
        
        if(addressOne != nil && addressOne != ""){
            addBodyItem(name: "address1", value: addressOne!)
        }
        
        if(addressTwo != nil && addressTwo != ""){
            addBodyItem(name: "address2", value: addressTwo!)
        }
        
        if(city != nil && city != ""){
            addBodyItem(name: "city", value: city!)
        }
        
        if(region != nil && region != ""){
            addBodyItem(name: "region", value: region!)
        }
        
        if(country != nil && country != ""){
            addBodyItem(name: "country", value: country!)
        }
        
        if(countryNationality != nil && countryNationality != ""){
            addBodyItem(name: "country_nationality", value: countryNationality!)
        }
        
        if(postalCode != nil && postalCode != ""){
            addBodyItem(name: "postalCode", value: postalCode!)
        }

        if(phone != nil && phone != ""){
            addBodyItem(name: "phone", value: phone!)
        }

        if(website != nil && website != ""){
            addBodyItem(name: "website", value: website!)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
