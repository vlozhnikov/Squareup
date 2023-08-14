#
# Be sure to run `pod lib lint Squareup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Squareup'
  s.version          = '1.0.3'
  s.summary          = 'The Squareup framework was developed to support the platform for iOS-based devices.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'The Squareup framework was developed to support the platform for iOS-based devices. It provides full support for the squareup API, implementing all functions except for the terminal/online/auth API.'
                       DESC

  s.homepage         = 'https://github.com/vlozhnikov/Squareup'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vlozhnikov' => 'vladimir.lozhnikov@gmail.com' }
  s.source           = { :git => 'https://github.com/vlozhnikov/Squareup.git', :tag => s.version.to_s }

  s.swift_version = "5.0"
  s.ios.deployment_target = '13.0'
  s.source_files = 'Squareup/Classes/1.0/**/*.swift'
  s.dependency 'Alamofire'
  
end
