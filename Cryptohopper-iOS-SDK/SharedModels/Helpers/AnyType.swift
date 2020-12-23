//
//  AnyType.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 23/12/2020.
//

import Foundation

enum QuantumValue: Codable {
    
    case double(Double), string(String)
    
    func encode(to encoder: Encoder) throws {
        
    }

    init(from decoder: Decoder) throws {
        if let double = try? decoder.singleValueContainer().decode(Double.self) {
            self = .double(double)
            return
        }

        if let string = try? decoder.singleValueContainer().decode(String.self) {
            self = .string(string)
            return
        }

        throw QuantumError.missingValue
    }

    enum QuantumError:Error {
        case missingValue
    }
}
