# frozen_string_literal: true

namespace :midjourney do
  desc 'Install Midjourney Ruby Client'
  task install: :environment do
    return :ok unless defined?(Rails)

    initializer_content = <<~RUBY
      # frozen_string_literal: true

      #
      # Take a look at https://github.com/leom806/midjourney-ruby for more information.
      #
      Midjourney.config do |config|
        # Fetch from an environment variable or fetch from Rails credentials if
        # you're using Rails 5.2+ and have credentials set up.

        config.discord_bot_token  = ENV['DISCORD_BOT_TOKEN']
        config.discord_channel_id = ENV['DISCORD_CHANNEL_ID']
      end
    RUBY

    initializer_path = Rails.root.join('config', 'initializers', 'midjourney.rb')

    if File.exist?(initializer_path)
      puts "\n #{Rainbow('Midjourney Ruby').purple} is already installed."
    else
      File.open(initializer_path, 'w') { |f| f.write(initializer_content) }
      puts "\n #{Rainbow('Midjourney Ruby').purple} has been installed! 🎉"
    end
  end
end
