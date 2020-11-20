//
//  HopperAPIGetHopperDashboardStatsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIGetHopperDashboardStatsRequest: HopperAPIRequest<HopperAPIGetHopperDashboardStatsResponse> {
    
    convenience init(hopperId : String ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/stats/dashboard")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
