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
gem install midjourney
```

and require with:

```ruby
require "midjourney"
```

Run `bundle install`.

If you are using Rails, run the generator:

```shell
bundle exec rails midjourney:install
```

That's it. You are now ready to go!

## Usage

You'll need a Midjourney API Key to use this gem. You can find your API Key in your [Midjourney Dashboard](https://www.midjourney.com) after you sign up for a plan at [Midjourney Plans](https://www.midjourney.com/account/).

### Configuration

Once you have your API Key, you can configure the gem with:

Open up the initializer file `config/initializers/midjourney.rb` and add your API Key as the following:

```ruby
  Midjourney.config do |config|
    config.api_key = ENV["YOUR_API_KEY"]
  end
```

### Imagine

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [Open an Issue](https://github.com/leom806/midjourney-ruby).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
Feel free to use it and contribute.

## Code of Conduct
Everyone interacting in the Ruby Midjourney project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
