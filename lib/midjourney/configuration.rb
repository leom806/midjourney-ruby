module Midjourney
  #
  # This class is used to store the configuration of the gem.
  #
  class Configuration
    attr_accessor :discord_user_token, :discord_channel_id

    def initialize
      @discord_user_token  = nil
      @discord_channel_id = nil
    end
  end
end
