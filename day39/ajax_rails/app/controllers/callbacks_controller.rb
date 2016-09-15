class CallbacksController < ApplicationController
  def twitter
    user = User.find_or_create_from_twitter request.env['omniauth.auth']
    session[:user_id] = user.id
    redirect_to root_path, notice: "Signed in with Twitter!"
  end

end

def twitter_client(user)
  Twitter::Client.new do |config|
          config.consumer_key        = ENV["TWITTER_API_KEY"]
          config.consumer_secret     = ENV["TWITTER_API_SECRET"]
          config.access_token        = user.twitter_token
          config.access_token_secret = user.twitter_secret
  end
end
