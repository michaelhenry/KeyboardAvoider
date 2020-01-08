Pod::Spec.new do |s|
  s.name             = 'KeyboardAvoider'
  s.version          = ENV['LIB_VERSION'] || '1.0'
  s.summary          = 'The missing interactive keyboard in SwiftUI for iOS'
  s.description      = <<-DESC
The missing interactive keyboard in SwiftUI for iOS.
                       DESC

  s.homepage         = 'https://github.com/michaelhenry/KeyboardAvoider'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'michaelhenry' => 'me@iamkel.net' }
  s.source           = { :git => 'https://github.com/michaelhenry/KeyboardAvoider.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michaelhenry119'
  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/KeyboardAvoider/**/*'
  s.swift_versions = ['5.0', '5.1']
  s.frameworks   = 'UIKit','Combine','Foundation', 'SwiftUI'
end