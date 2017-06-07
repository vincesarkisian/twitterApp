class TwitterController < ApplicationController

  before_action :authenticate_user!

  def index
    if params[:twitter_handle]
      @tweets = TwitterService.get_tweets_for_handle(params[:twitter_handle])
    end
  end

end
