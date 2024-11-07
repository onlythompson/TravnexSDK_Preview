# use framework!
use frameworks :linkage =>static

Pod::Spec.new do |spec|

  spec.name         = "TravnexSDK"
  spec.version      = "1.0.0"
  spec.summary      = "TravnexSDK for connecting with Travnex powered service"

  spec.description  = <<-DESC
                    Provides configurations and customizations for connecting with travnex servers
                   DESC

  spec.homepage     = "https://github.com/trav-nex/TravnexSDK_Preview"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Dominic Thompson" => "onlythompson@gmail.com" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"

  spec.source       = { :git => "https://github.com/trav-nex/TravnexSDK_Preview.git", :tag => "#{spec.version}" }
  spec.platform :ios, '13.0'
  spec.vendor_frameworks = "TravnexSDK.xcframework"


  spec.source_files  = "Classes", "Sources/**/*.{h,m,swift}"
 
  spec.resources = "Sources/**/*.{png,xib,storyboard,xcassets,strings}"

  spec.framework = "UIKit"
  spec.requires_arc = true
  spec.dependency "AgoraRtcEngine_iOS", "~> 4.4"

end
