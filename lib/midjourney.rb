# frozen_string_literal: true

require 'json'
require 'pry-byebug'
require 'rainbow'
require 'rake'
require 'rest-client'

require_relative 'midjourney/configuration'
require_relative 'midjourney/api/gateway'
require_relative 'midjourney/api/imagine'

#
# Midjourney Ruby Client
#
module Midjourney
  VERSION = '0.1.21'

  class Error < StandardError; end

  extend API::Imagine

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.config
    yield(configuration)
  end

  def self.api
    @api ||= API::Gateway.new(token: discord_bot_token, channel_id: discord_channel_id)
  end

  def self.discord_bot_token
    configuration.discord_bot_token
  end

  def self.discord_channel_id
    configuration.discord_channel_id
  end
end
