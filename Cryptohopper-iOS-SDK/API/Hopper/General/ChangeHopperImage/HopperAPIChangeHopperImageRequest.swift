//
//  HopperAPIChangeHopperImageRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 26/10/2020.
//

import Foundation
import UIKit

class HopperAPIChangeHopperImageRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String ,image : String) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/changeimage")
        addBodyItem(name: "image", value: image)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
