# frozen_string_literal: true

require 'json'
require 'pry-byebug'
require 'rainbow'
require 'rake'
require 'rest-client'

require_relative 'midjourney/configuration'
require_relative 'midjourney/api/gateway'
require_relative 'midjourney/api/imagine'
require_relative 'midjourney/api/messages'

#
# Midjourney Ruby Client
#
module Midjourney
  VERSION = '0.2.0'

  class Error < StandardError; end

  extend API::Imagine
  extend API::Messages

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.config
    yield(configuration)
  end

  def self.api
    @api ||= API::Gateway.new(token: discord_user_token, channel_id: discord_channel_id)
  end

  def self.discord_user_token
    configuration.discord_user_token
  end

  def self.discord_channel_id
    configuration.discord_channel_id
  end
end
