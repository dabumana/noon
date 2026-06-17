# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "noon"
  spec.version       = "0.2.4"
  spec.authors       = ["dabumana"]
  spec.email         = ["a310n@pm.me"]
  spec.summary       = "CTI/CTH Blog"
  spec.homepage      = "https://not-a.xyz"
  spec.license       = "MIT"
  spec.metadata["plugin_type"] = "theme"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_layouts|_includes|_sass|assets)!i) }
  spec.add_runtime_dependency "bootstrap", ">= 0"
  spec.add_runtime_dependency "jekyll", ">= 0"
  spec.add_runtime_dependency "jekyll-feed", ">= 0"
  spec.add_runtime_dependency "jekyll-seo-tag", ">= 0"
  spec.add_runtime_dependency "jekyll-sitemap", ">= 0"
  spec.add_runtime_dependency "bundler", ">= 0"
  spec.add_runtime_dependency "rake", ">= 0"
  spec.add_development_dependency "bundler", ">= 0"
  spec.add_development_dependency "rake", ">=0"
end
