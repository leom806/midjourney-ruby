# frozen_string_literal: true

require_relative "midjourney/configuration"

module Midjourney
  VERSION = "0.1.2"

  class Error < StandardError; end

  def self.configuration
    @@configuration ||= Configuration.new
  end

  def self.config
    yield(configuration)
  end
end
