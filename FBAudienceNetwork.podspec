Pod::Spec.new do |spec|
  spec.name         = "FBAudienceNetwork"
  spec.version      = "6.15.0"
  spec.summary      = "Facebook Audience Network Mobile App Ad SDK"
  spec.description  = "Facebook's Audience Network allows you to monetize your iOS and Android apps with Facebook ads."
  spec.homepage     = "https://developers.facebook.com/docs/audience-network"
  spec.license      =  { :type => "Copyright", :text => "Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved." }
  spec.author       = "Facebook"
  spec.platform     = :ios, '12.0'
  spec.source       = { :http => "https://developers.facebook.com/resources/FBAudienceNetwork-6.15.0.zip",
                        :sha1 => "bbb103a054b42221a270e26e74a0dae3bf6401cc"}
  spec.source_files  = "Static/FBAudienceNetwork.xcframework/**/*.h"
  spec.ios.resource_bundle = { 'FBAudienceNetwork' => 'Static/FBAudienceNetwork.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy' }
  spec.public_header_files = "Static/FBAudienceNetwork.xcframework/**/*.h"
  spec.frameworks = "AudioToolbox", "AppTrackingTransparency", "StoreKit", "CoreGraphics", "UIKit", "Foundation", "Security", "CoreImage", "AVFoundation", "CoreMedia"
  spec.weak_frameworks = "AdSupport", "CFNetwork", "CoreMotion", "CoreTelephony", "LocalAuthentication", "SafariServices", "SystemConfiguration", "VideoToolbox", "WebKit"
  spec.library   = "c++", "xml2", "z"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.ios.vendored_frameworks = 'Static/FBAudienceNetwork.xcframework'
  spec.requires_arc = true
  spec.swift_versions = ['5.0']
  spec.static_framework = true

end
