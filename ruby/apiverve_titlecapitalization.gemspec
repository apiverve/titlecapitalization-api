# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_titlecapitalization"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Title Case Converter API - Ruby Client"
  spec.description   = "Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards. Send raw headline text and a chosen rule set like APA, Chicago, or AP to receive properly capitalized copy."
  spec.homepage      = "https://apiverve.com/marketplace/titlecapitalization?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/titlecapitalization-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/titlecapitalization"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
