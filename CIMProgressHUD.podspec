#
# Be sure to run `pod lib lint CIMProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CIMProgressHUD'
  s.version          = '0.2.0'
  s.summary          = 'This is my test for cocoapods'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      My first Test to use cocoapods
#TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/iCalabash/CIMProgressHUD'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iCalabash' => '136085453@qq.com' }
  s.source           = { :git => 'https://github.com/iCalabash/CIMProgressHUD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CIMProgressHUD/Classes/*'
  
   s.resource_bundles = {
     'CIMProgressHUD' => ['CIMProgressHUD/Assets/*.png']
   }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
