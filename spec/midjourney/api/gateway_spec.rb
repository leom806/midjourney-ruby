# frozen_string_literal

RSpec.describe Midjourney::API::Gateway do
  it 'instantiates a new Gateway object' do
    api = create_api_gateway

    expect(api).to be_a(Midjourney::API::Gateway)
    expect(api.token).to eq Midjourney.configuration.discord_user_token
    expect(api.channel_id).to eq Midjourney.configuration.discord_channel_id
  end

  it 'sends a message to Discord Channel' do
    api = create_api_gateway
    message = api.send_message('Hello World!')

    expect(message).to be_a(RestClient::Response)
  end
end
