# frozen_string_literal: true

module Midjourney
  module API
    #
    # Midjourney Read Messages Module
    #
    module Messages
      def read_messages(limit = 50)
        api.read_messages(limit)
      end

      def send_message(message)
        api.send_message(message)
      end
    end
  end
end
