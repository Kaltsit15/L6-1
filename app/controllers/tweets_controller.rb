class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweets = Tweet.new
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    tweet = Tweet.new(message: params[:tweet][:message])
    tweet.save
    redirect_to root_path
  end
  
  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to root_path
  end
end