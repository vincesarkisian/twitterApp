class TwitterService
  KEY = '7xOYFDq9w8Uy2p23N4pVSRMEO'
  SECRET = 'M1OQ23nB1SxKuwuHAP9Ttwi6ZwF0eVzdMYMbRcNq0bEHbY6YKh'
  NUMBER_OF_TWEETS = 25


  def self.get_tweets_for_handle(handle)
    @tweets = []

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = KEY
      config.consumer_secret = SECRET
    end

    client.user_timeline(handle).take(NUMBER_OF_TWEETS).collect do |tweet|
      @tweets.push(Tweet.new({content: tweet.text, timestamp: tweet.created_at}))
    end


    return @tweets
  end

end