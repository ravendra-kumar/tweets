require "get_user_tweets/version"

module GetUserTweets
  class TwitterData
    def initialize(consumer_key, consumer_secret, access_token, access_token_secret)
      @consumer_key = consumer_key
      @consumer_secret = consumer_secret
      @access_token = access_token
      @access_token_secret = access_token_secret
    end
    
    def get_tweets

    end

    def prepare_access_token
      require 'oauth'
      require 'json'
      consumer = OAuth::Consumer.new(@consumer_key, @consumer_secret, { :site => "https://api.twitter.com", :scheme => :header })

      # now create the access token object from passed values
      token_hash = { :oauth_token => @access_token, :oauth_token_secret => @access_token_secret }
      access_token = OAuth::AccessToken.from_hash(consumer, token_hash )

      return access_token
    end

    def get_tweets(query)
      access_token = prepare_access_token
      # use the access token as an agent to get the home timeline
      re = access_token.request(:get, "https://api.twitter.com/1.1/search/tweets.json?q=#{query}")
      body = re.body
      body = JSON.parse(body)
      results=body["statuses"]
      unless results.empty?
        results.each do |r|
           puts r["text"]
           puts "https://twitter.com/statuses/#{r["id"]}"
        end
      else
        puts "No tweets found"
      end
    end

  end
end
