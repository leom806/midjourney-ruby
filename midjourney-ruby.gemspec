# frozen_string_literal: true

require_relative "lib/midjourney/version"

Gem::Specification.new do |spec|
  spec.name = "midjourney-ruby"
  spec.version = Midjourney::VERSION
  spec.authors = ["Leonardo Momente"]
  spec.email = ["leom806@gmail.com"]

  spec.summary = "Ruby client for Midjourney."
  spec.description = "This is a Ruby client for Midjourney that allows you to use its main products via their Discord API."
  spec.homepage = "https://github.com/leom806/midjourney-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/leom806/midjourney-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/leom806/midjourney-ruby/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_dependency "rainbow", "~> 3.0"

  spec.add_development_dependency "rspec", "~> 3.2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
