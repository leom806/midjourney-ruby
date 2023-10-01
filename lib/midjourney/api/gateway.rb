# frozen_string_literal: true

module Midjourney
  module API
    #
    # Discord API Gateway using RestClient
    #
    class Gateway
      BASE_URL = ->(channel_id) { "https://discord.com/api/v9/channels/#{channel_id}/messages" }

      attr_reader :token, :channel_id

      def initialize(token:, channel_id:)
        @token = token
        @channel_id = channel_id
      end

      def send_message(message)
        RestClient.post(BASE_URL[channel_id], payload(message), headers)
      rescue RestClient::ExceptionWithResponse => e
        puts "Error sending message: #{e.response.body}"
      end

      private

      def payload(message)
        {
          content: message,
          flags: 0,
          mobile_network_type: 'unknown',
          tts: false
        }.to_json
      end

      def headers
        @headers ||= {
          'Authorization' => token,
          'Accept' => 'application/json',
          'Content-Type' => 'application/json'
        }
      end
    end
  end
end
