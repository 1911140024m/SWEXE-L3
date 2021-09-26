class TweetsController < ApplicationController
    def create
        @twitter = Tweet.new(message: params[:tweet][:message],tdate: params[:tweet][:tdate])
        if @twitter.save
            flash[:notice] = '1レコード追加しました'
            redirect_to '/'
        else
            render 'new'
        end
    end
    
    def index
        @twitters = Tweet.all
    end
    
    def new
        @twitter = Tweet.new
    end
    
    def show
        @twitter = Tweet.find(params[:id])
    end
    
    def edit
        @twitter = Tweet.find(params[:id])
    end
        
    def destroy
        twitter = Tweet.find(params[:id])
        twitter.destroy
        redirect_to '/'
    end
    
    def update
        twitter = Tweet.find(params[:id])
        twitter.update(message: params[:tweet][:message],tdate: params[:tweet][:tdate])
        redirect_to '/'
    end

end
