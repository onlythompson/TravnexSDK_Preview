
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

  spec.ios.deployment_target = "14.0"
  spec.swift_version = "5.0"

  spec.source       = { :git => "https://github.com/trav-nex/TravnexSDK_Preview.git", :tag => "#{spec.version}" }
  spec.platform :ios, '13.0'
  spec.vendored_frameworks = "TravnexSDK.xcframework"


  spec.source_files  = "TravnexSDK/**/*.{h,m,swift}"
  spec.public_header_files = "TravnexSDK/Public/*.h"
 
  spec.resources = { "TravnexSDK" => ["TravnexSDK/**/*.{png,xib,storyboard,xcassets,strings}"] }

  spec.framework = "UIKit"
  spec.framework = "CoreLocation"
  
  spec.pod_target_xconfig = {
    'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => '-ObjC'
  }
  spec.requires_arc = true
  spec.dependency "AgoraRtcEngine_iOS", "~> 4.4"
  spec.static_framework = true

end
