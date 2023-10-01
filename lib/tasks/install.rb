namespace :midjourney do
  desc "Install Midjourney Ruby Client"
  task install: :environment do
    return :ok unless defined?(Rails)

    initializer_content = <<~RUBY
      # frozen_string_literal: true

      #
      # Take a look at https://github.com/leom806/midjourney-ruby for more information.
      #
      Midjourney.config do |config|
        # Fetch from an environment variable
        # config.api_key = ENV["MIDJOURNEY_API_KEY"]
        # Or fetch from Rails credentials if you're using Rails 5.2+ and have credentials set up
        # config.api_key = Rails.application.credentials.midjourney_api_key # or whatever you named your key

        config.discord_api_key    = ENV["DISCORD_API_KEY"]
        config.midjourney_api_key = ENV["MIDJOURNEY_API_KEY"]
      end
    RUBY

    initializer_path = Rails.root.join("config", "initializers", "midjourney.rb")

    if File.exist?(initializer_path)
      puts "\n  " + Rainbow("Midjourney Ruby").purple + " is already installed! 🎉"
    else
      File.open(initializer_path, "w") { |f| f.write(initializer_content) }
      puts "\n  " + Rainbow("Midjourney Ruby").purple + " has been installed! 🎉"
    end
  end
end
