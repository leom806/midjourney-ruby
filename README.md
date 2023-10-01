# Midjourney Ruby

[![Gem Version](https://badge.fury.io/rb/midjourney-ruby.svg)](https://badge.fury.io/rb/midjourney-ruby)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/leom806/midjourney-ruby/blob/main/LICENSE.txt)
[![CircleCI Build Status](https://circleci.com/gh/leom806/midjourney-ruby.svg?style=shield)](https://circleci.com/gh/leom806/midjourney-ruby)

Midjourney is an awesome tool that brings great value to products.
This gem was created to facilitate Ruby and also Rails applications to use all services of Midjourney directly.

Keep in mind that you need to have a Midjourney account to use this gem, checkout [Midjourney](https://www.midjourney.com) for more information.

## Installation

Add the following to your Gemfile:

```ruby
gem "midjourney-ruby"
```

Or install with:

```shell
gem install midjourney-ruby
```

and require with:

```ruby
require "midjourney-ruby"
```

Run `bundle install`.

If you are using Rails, run the generator:

```shell
bundle exec rails midjourney:install
```

That's it. You are now ready to go!

## Usage

Make sure you have a
  - Discord Account or create one at [Discord](https://discord.com)
  - Discord Bot Token or create a token at [Discord Developer Portal](https://discord.com/developers/applications)
  - A Midjourney account or sign up at [Midjourney](https://www.midjourney.com)
  - A Midjourney Paid plan to use this gem or sign up at [Midjourney Plans](https://www.midjourney.com/account/)

### Configuration

Once you have your Discord Bot Token, you can configure the gem with:

Open up the initializer file `config/initializers/midjourney.rb` and add your API Keys as the following:

```ruby
  Midjourney.config do |config|
    config.discord_bot_token   = ENV["DISCORD_BOT_TOKEN"]
    config.discord_channel_id  = ENV["DISCORD_CHANNEL_ID"]
  end
```

### Imagine

Imagine is a Midjourney command that allows you to use AI to generate images.
You can use it to generate images of people, animals, objects, and anything else you can imagine.

#### Basic Usage

```ruby
  Midjourney.imagine("A person, sitting on a chair, in a room, with a window, looking outside, with a cat, on the floor, sleeping")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at [Open an Issue](https://github.com/leom806/midjourney-ruby).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
Feel free to use it and contribute.

## Code of Conduct
Everyone interacting in the Ruby Midjourney project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
