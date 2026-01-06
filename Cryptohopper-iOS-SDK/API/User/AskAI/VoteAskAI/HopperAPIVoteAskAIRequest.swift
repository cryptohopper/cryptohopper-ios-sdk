//
//  HopperAPIVoteAskAIRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIVoteAskAIRequest: HopperAPIRequest<HopperAPIVoteAskAIResponse> {
    
    convenience init(voteId: String, vote: Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askai/vote")
        addBodyItem(name: "vote_id", value: voteId)
        addBodyItem(name: "vote", value: vote)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

