namespace :midjourney do
  desc "Install Midjourney Ruby Client"
  task :install => :environment do
    initializer_content = <<~RUBY
      # frozen_string_literal: true

      Midjourney.config do |config|
        # Fetch from an environment variable
        config.api_key = ENV["MIDJOURNEY_API_KEY"]
        # Or fetch from Rails credentials if you're using Rails 5.2+ and have credentials set up
        config.api_key = Rails.application.credentials.midjourney_api_key # or whatever you named your key
      end
    RUBY

    initializer_path = Rails.root.join("config", "initializers", "midjourney.rb")

    unless File.exist?(initializer_path)
      File.open(initializer_path, "w") do |f|
        f.write(initializer_content)
      end

      puts Rainbow("Midjourney Ruby").purple + "has been installed! 🎉"
    end

    puts Rainbow("Midjourney Ruby").purple + "is already installed! 🎉"
  end
end
