# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "minduim"
  spec.version       = "1.0.4"
  spec.authors       = ["Arthur Freitas"]
  spec.email         = ["email@arthr.me"]
  spec.summary       = "A charming blog theme for Jekyll."
  spec.description   = "Minduim is a charming blog theme for Jekyll based on the classic Posterous default theme. It offers a two-column layout with support for pagination, archives, SEO tags, and customizable sidebar widgets."
  spec.homepage      = "https://minduim.arthr.dev"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/arthrfrts/minduim"
  spec.metadata["changelog_uri"] = "https://github.com/arthrfrts/minduim/releases"
  spec.metadata["bug_tracker_uri"] = "https://github.com/arthrfrts/minduim/issues"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i)
  end

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "jekyll", "~> 4.0"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17.0"
  spec.add_runtime_dependency "jekyll-json-feed", "~> 1.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"

  spec.add_development_dependency "bundler", ">= 1.16"
end
