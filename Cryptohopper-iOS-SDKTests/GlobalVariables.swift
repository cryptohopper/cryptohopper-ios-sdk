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

let clientId = "#Client-id-here#"
let clientSecret = "#Client-secret-here#"
let username = "#Username-here"
let password = "#Password-here#"
let userAgent = "#UserAgent-here"
