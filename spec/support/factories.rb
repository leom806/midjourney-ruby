def create_api_gateway
  Midjourney::API::Gateway.new(
    token: Midjourney.configuration.discord_user_token,
    channel_id: Midjourney.configuration.discord_channel_id
  )
end
