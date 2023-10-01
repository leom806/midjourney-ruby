# frozen_string_literal: true

module Midjourney
  module API
    #
    # Discord API Gateway using RestClient
    #
    class Gateway
      BASE_URL = 'https://discord.com/api/v9'

      attr_reader :token, :channel_id

      def initialize(token:, channel_id:)
        @token = token
        @channel_id = channel_id
      end

      def read_messages(limit = 50)
        get_request("#{BASE_URL}/channels/#{channel_id}/messages?limit=#{limit}")
      end

      def send_message(message)
        post_request("#{BASE_URL}/channels/#{channel_id}/messages", message_payload(message))
      end

      def send_imagine(prompt)
        post_request("#{BASE_URL}/interactions", imagine_payload(prompt))
      end

      private

      def get_request(url)
        JSON.parse RestClient.get(url, headers).body
      rescue RestClient::ExceptionWithResponse => e
        puts "Error sending message: #{e.response.body}"
      end

      def post_request(url, payload)
        RestClient.post(url, payload, headers)
      rescue RestClient::ExceptionWithResponse => e
        puts "Error sending message: #{e.response.body}"
      end

      def imagine_payload(prompt) # rubocop:disable Metrics/MethodLength
        {
          type: 2,
          application_id: '936929561302675456',
          guild_id: '1158081328068165704',
          channel_id: channel_id,
          session_id: '939307d50a643c3d8cfcf4e756063e3b',
          data: {
            version: '1118961510123847772',
            id: '938956540159881230',
            name: 'imagine',
            type: 1,
            options: [
              {
                type: 3,
                name: 'prompt',
                value: prompt
              }
            ],
            application_command: {
              id: '938956540159881230',
              application_id: '936929561302675456',
              version: '1118961510123847772',
              default_member_permissions: nil,
              type: 1,
              nsfw: false,
              name: 'imagine',
              description: 'Create images with Midjourney',
              dm_permission: true,
              contexts: [0, 1, 2],
              integration_types: [0],
              options: [
                {
                  type: 3,
                  name: 'prompt',
                  description: 'The prompt to imagine',
                  required: true
                }
              ]
            },
            attachments: []
          }
        }.to_json
      end

      def message_payload(message)
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
