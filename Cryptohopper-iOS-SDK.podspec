Pod::Spec.new do |spec|
  spec.name         = "Cryptohopper-iOS-SDK"
  spec.version      = "1.2.0"
  spec.summary      = "Cryptohopper iOS SDK"
  spec.description  = "Cryptohopper iOS SDK , Swift "
  spec.homepage     = "https://cryptohopper.com" 
  spec.license      = { :type => "MIT", :file => "MIT-LICENSE" }
  spec.authors      = { "Kaan" => "kaan@cryptohopper.com" }
  spec.source       = { :git => "https://github.com/cryptohopper/cryptohopper-ios-sdk.git" ,:tag => "#{spec.version}" }
  spec.swift_version = '5.0'
  spec.ios.deployment_target  = '11.0'
  spec.source_files  = "Cryptohopper-iOS-SDK/**/*.swift"
  spec.ios.framework  = 'UIKit'
end