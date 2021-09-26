class TweetsController < ApplicationController
    def index
        @tweet = Tweet.all 
        
    end
    def new 
        @tweet = Tweet.new
    end
    def create
        @tweet = Tweet.new(message: params[:tweet][:message],tdate: params[:tweet][:tdate])
        if @tweet.save
        redirect_to '/'
        else
        render 'new'
        end
    def show
        @tweet = Tweet.find(params[:id])
    end
    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to '/'
    end
    def edit
        @tweet = Tweet.find(params[:id])
    end
    def update
        @tweet = Tweet.find(params[:id])
        @tweet.update(message: params[:tweet][:message],tdate: params[:tweet][:tdate])
        if @tweet.save
        redirect_to '/'
        else
        render 'new'
        end
    end
    end
end
