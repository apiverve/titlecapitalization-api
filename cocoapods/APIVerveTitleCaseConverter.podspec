Pod::Spec.new do |s|
  s.name             = 'APIVerveTitleCaseConverter'
  s.version          = '1.2.3'
  s.summary          = 'Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards.'
  s.description      = <<-'DESC'
Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards. Send raw headline text and a chosen rule set like APA, Chicago, or AP to receive properly capitalized copy.

This iOS/macOS SDK provides a convenient way to access the Title Case Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/titlecapitalization?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/titlecapitalization-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTitleCaseConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
