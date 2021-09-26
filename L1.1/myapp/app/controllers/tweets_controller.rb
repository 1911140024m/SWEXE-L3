class TweetsController < ApplicationController
    def index
        @tweet = Tweet.all 
    end
    def new 
        @tweet = Tweet.new
    end
    def create
        @tweet = Tweet.new(message: params[:tweet][:message])
        if @tweet.save
        redirect_to :root
        else
        render 'new'
        end
    def show
        @tweet = Tweet.find(params[:id])
    end
    def destroy
        @tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to :root
    end
    def edit
        @tweet = Tweet.find(params[:id])
    end
    def update
        @tweet = Tweet.find(params[:id])
        title = params[:tweet][:message]
        @tweet.update(tweet: tweet)
        redirect_to :root
    end
    end
end
