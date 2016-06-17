# Tweets

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tweets`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_user_tweets'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get_user_tweets

## Usage

Some following steps that you need to follow

1) You need four parameters 
  a) consumer_key
  b) consumer_secret
  c) access_token
  d) access_token_secret
  e) Login to your twitter account

  Note* If you have not then follow this link

    https://apps.twitter.com/app/new

2) 

client = GetUserTweets::TwitterData.new('<consumer_key>', '<consumer_secret>', '<access_token>', '<access_token_secret>')
client.get_tweets("your keyword")

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ravendra-kumar/get_user_tweetstweets. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

