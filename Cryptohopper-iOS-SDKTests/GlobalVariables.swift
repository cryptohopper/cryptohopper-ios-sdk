//
//  GlobalVariables.swift
//  Cryptohopper-iOS-SDKTests
//
//  Created by Kaan Baris Bayrak on 23/10/2020.
//


//IMPORTANT NOTE - this file replaced by build server with secrets , in order to test locally replace #clientId# , #username# and #password# below
import Foundation
@testable import Cryptohopper_iOS_SDK

let apiTimeout : DispatchTimeInterval = .seconds(20)
let environment = HopperAPIEnvironment.Sandbox
let isDebugEnabled = true

let clientId = "CLIENT-ID-HERE"
let username = "USERNAME-HERE"
let password = "PASSWORD-HERE"
