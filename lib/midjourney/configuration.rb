module Midjourney
  #
  # This class is used to store the configuration of the gem.
  #
  class Configuration
    attr_accessor :discord_api_key, :midjourney_api_key

    def initialize
      @discord_api_key    = nil
      @midjourney_api_key = nil
    end
  end
end
