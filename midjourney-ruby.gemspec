# frozen_string_literal: true

require_relative 'lib/midjourney'
require_relative 'lib/tasks/install.rb'

Gem::Specification.new do |spec|
  spec.name = 'midjourney-ruby'
  spec.version = Midjourney::VERSION
  spec.authors = ['Leonardo Momente']
  spec.email = ['leom806@gmail.com']
  spec.summary = 'Ruby client for Midjourney'
  spec.description = 'This is a Ruby client for Midjourney that allows you to use its main products via their Discord API.'
  spec.homepage = 'https://github.com/leom806/midjourney-ruby'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/leom806/midjourney-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/leom806/midjourney-ruby/blob/main/CHANGELOG.md'
  spec.files = Dir['lib/**/*', 'my_gem.gemspec']
end
