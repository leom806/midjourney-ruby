module Midjourney
  #
  # This class is used to store the configuration of the gem.
  #
  class Configuration
    attr_accessor :discord_bot_token, :discord_channel_id

    def initialize
      @discord_bot_token  = nil
      @discord_channel_id = nil
    end
  end
end
