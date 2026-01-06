//
//  HopperAPIPerformAskAIRequest.swift
//  Cryptohopper-iOS-SDK
//

import Foundation

class HopperAPIPerformAskAIRequest: HopperAPIRequest<HopperAPIPerformAskAIResponse> {
    
    convenience init(page: String, question: String?, suggestionId: String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/user/askai")
        addBodyItem(name: "page", value: page)
        
        if let question = question, !question.isEmpty {
            addBodyItem(name: "question", value: question)
        }
        
        if let suggestionId = suggestionId, !suggestionId.isEmpty {
            addBodyItem(name: "suggestion_id", value: suggestionId)
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

