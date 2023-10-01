require 'dotenv/load'

Midjourney.config do |config|
  config.discord_user_token = ENV.fetch('DISCORD_USER_TOKEN')
  config.discord_channel_id = ENV.fetch('DISCORD_CHANNEL_ID')
end
