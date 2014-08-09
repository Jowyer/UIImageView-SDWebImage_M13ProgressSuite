#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "UIImageView+SDWebImage_M13ProgressSuite"
  s.version          = "0.1.1"
  s.summary          = "Category of UIImageView, downloaded with SDWebImage, progressed with M13ProgressSuite."
  # s.description      = "some description"
  s.homepage         = "https://github.com/Jowyer/UIImageView-SDWebImage_M13ProgressSuite"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jowyer Wang" => "jowyer@gmail.com" }
  s.source           = { :git => "https://github.com/Jowyer/UIImageView-SDWebImage_M13ProgressSuite.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/EXAMPLE'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'Classes/UIImageView-SDWebImage_M13ProgressSuite/*'
  # s.resources = 'Assets/*.png'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  s.dependency 'SDWebImage/WebP'
  s.dependency 'M13ProgressSuite'
end
