# frozen_string_literal: true

module Midjourney
  module API
    #
    # Midjourney Imagine Module
    #
    module Imagine
      def imagine(prompt)
        api.send_imagine(prompt)
      end
    end
  end
end
