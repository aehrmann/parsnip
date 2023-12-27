# frozen_string_literal: true

require_relative "lib/parsnip/version"

Gem::Specification.new do |spec|
  spec.name = "parsnip"
  spec.version = Parsnip::VERSION
  spec.authors = ["Ari Ehrmann"]
  spec.email = ["ari.ehrmann@gmail.com"]

  spec.summary = "Parser for shorthand knitting patterns"
  spec.description = "Parser/expander for shorthand knitting instructions and pattern descriptions"
  spec.homepage = "https://github.com/aehrmann/parsnip"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aehrmann/parsnip"
  spec.metadata["changelog_uri"] = "https://github.com/aehrmann/parsnip/CHANGELOG"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "parslet", "~> 2.0"
end
