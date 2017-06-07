class TwitterController < ApplicationController

  before_action :authenticate_user!

  rescue_from Twitter::Error do
    redirect_to 'twitter#index', :flash => { :error => "Error occurred while getting tweets from twitter." }
  end

  def index
    if params[:twitter_handle]
      @tweets = TwitterService.get_tweets_for_handle(params[:twitter_handle])
    end
  end

end
