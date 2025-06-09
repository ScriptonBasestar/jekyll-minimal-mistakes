require "json"

package_json = JSON.parse(File.read("package.json"))

Gem::Specification.new do |spec|
  spec.name                    = "minimal-mistakes-jekyll"
  spec.version                 = package_json["version"]
  spec.authors                 = ["Michael Rose", "iBug"]

  spec.summary                 = %q{A flexible two-column Jekyll theme.}
  spec.homepage                = "https://github.com/ScriptonBasestar-io/minimal-mistakes.git"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown|adoc)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.4", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 12.3.3"
  
  ## custom--------------------
  spec.add_runtime_dependency "jekyll-avatar", "0.8.0"
  spec.add_runtime_dependency "jekyll-gravatar", "~> 0.1"

  spec.add_runtime_dependency "jekyll-mentions", "1.6.0"
  spec.add_runtime_dependency "jekyll-redirect-from", "0.16.0"
  spec.add_runtime_dependency "jekyll-remote-theme", "0.4.3"
  spec.add_runtime_dependency "jekyll-sass-converter", ">= 2.0", "< 4.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "2.8.0"

  spec.add_runtime_dependency "jemoji", "0.13.0"
  spec.add_runtime_dependency "kramdown-parser-gfm", "1.1.0"
  spec.add_runtime_dependency "kramdown", "2.4.0"
  spec.add_runtime_dependency "liquid", "~> 4.0.4"

  spec.add_runtime_dependency "safe_yaml", "~> 1.0.5"
  spec.add_runtime_dependency "sass", "~> 3.7.4"

  # not in ghpages - theme dep
  spec.add_runtime_dependency "jekyll-asciidoc", "~> 3.0"
  spec.add_runtime_dependency "asciidoctor-diagram", "~> 2.3"
end
