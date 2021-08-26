//
//  .swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 26/08/2021.
//

import Foundation

class HopperAPIGetSignalChartDataRequest: HopperAPIRequest<HopperAPIGetSignalChartDataResponse> {
    
    convenience init(signalId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/market/signals/\(signalId)/chartdata")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}
