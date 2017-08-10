class SendTweet

  def initialize(tweet)

    @tweet = tweet

  end

  def perform

    log_in_to_twitter

    send_tweet

  end

private

  def log_in_to_twitter

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "sn4kuMvFDaA4uX4IoaRy06r5I"
      config.consumer_secret     = "AkkgPPI0alWVqFm74iuROkSEDIkcPYIKMzgHxdZ9bbPFsLF7hv"
      config.access_token        = "885132936357576706-bXwtT0ROU5sdkgYxUVTfuOnOklptfvF"
      config.access_token_secret = "6h7Zja3HECHrfgyoz9dtEifDDDecqE5m2rxNYMto7ri6k"
    end

  end

  def send_tweet

    @client.update(@tweet)

  end

end
