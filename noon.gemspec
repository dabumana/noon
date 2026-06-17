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
  spec.add_runtime_dependency "bootstrap", "~> 4.3.1"
  spec.add_runtime_dependency "jekyll", "~> 4.4.1"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.16.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "jekyll-sass-converter", "~> 3.1.0"
  spec.add_runtime_dependency "terminal-table", "~> 3.0.2"
  spec.add_runtime_dependency "bundler", "~> 4.0.14"
  spec.add_runtime_dependency "rake", "~> 13.4.2"
  spec.add_development_dependency "bundler", "~> 4.0.14"
  spec.add_development_dependency "rake", "~> 13.4.2"
end
