require 'dotenv/load'

Midjourney.config do |config|
  config.discord_bot_token  = ENV.fetch('DISCORD_BOT_TOKEN')
  config.discord_channel_id = ENV.fetch('DISCORD_CHANNEL_ID')
end
