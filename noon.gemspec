# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "noon"
  spec.version       = "0.1.9"
  spec.authors       = ["dabumana"]
  spec.email         = ["a310n@pm.me"]
  spec.summary       = "Simple-minimal blog."
  spec.homepage      = "https://not-a.xyz"
  spec.license       = "MIT"
  spec.metadata["plugin_type"] = "theme"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_layouts|_includes|_sass|assets)!i) }
  spec.add_runtime_dependency "bootstrap", "~> 4.3.1"
  spec.add_runtime_dependency "jekyll", "~> 4.2.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.16.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "bundler", "~> 2.5.23"
  spec.add_runtime_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "bundler", "~> 2.5.23"
  spec.add_development_dependency "rake", "~> 13.0.6"
end