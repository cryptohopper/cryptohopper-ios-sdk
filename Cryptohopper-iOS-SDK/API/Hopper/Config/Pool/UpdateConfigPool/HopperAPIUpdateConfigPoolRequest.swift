//
//  HopperAPIUpdateConfigPoolRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 29/10/2020.
//

import Foundation
import UIKit

class HopperAPIUpdateConfigPoolRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,enabled : HopperEnabled ,configPool : HopperConfigPool) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/config/pool/\(String(describing: configPool.id))")

        addBodyItem(name: "pool_name", value: configPool.name ?? "")
        addBodyItem(name: "selected_coins", value: configPool.coins ?? "")
        addBodyItem(name: "config", value: configPool.config ?? "")
        addBodyItem(name: "enabled", value: enabled )
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .PATCH
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
