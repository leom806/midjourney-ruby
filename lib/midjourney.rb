# frozen_string_literal: true

require 'rainbow'

require_relative "midjourney/version"
require_relative "midjourney/configuration"

if defined?(Rails)
  require_relative 'tasks/install.rake'
end

module Midjourney
  class Error < StandardError; end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def config
      yield(configuration)
    end
    alias configure config
  end
end
