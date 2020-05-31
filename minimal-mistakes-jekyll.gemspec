require "json"

package_json = JSON.parse(File.read("package.json"))

Gem::Specification.new do |spec|
  spec.name                    = "minimal-mistakes-jekyll"
  spec.version                 = package_json["version"]
  spec.authors                 = ["Michael Rose", "iBug"]

  spec.summary                 = %q{A flexible two-column Jekyll theme.}
  spec.homepage                = "https://github.com/geek-re-kr/minimal-mistakes.git"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown|adoc)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.3"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.1"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.1"
  spec.add_runtime_dependency "jekyll-gravatar", "~> 0.1"
  spec.add_runtime_dependency "jekyll-admin", "~> 0.10"
  spec.add_runtime_dependency "jekyll-asciidoc", "~> 2.0.1"
  spec.add_runtime_dependency "jekyll-archives"
  spec.add_runtime_dependency "asciidoctor-diagram"
  spec.add_runtime_dependency "jemoji"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
