{"filter":false,"title":"tweets_controller.rb","tooltip":"/L1.1/myapp/app/controllers/tweets_controller.rb","undoManager":{"mark":-1,"position":-1,"stack":[[{"start":{"row":16,"column":7},"end":{"row":17,"column":0},"action":"remove","lines":["",""],"id":3}],[{"start":{"row":17,"column":4},"end":{"row":30,"column":7},"action":"remove","lines":["def destroy","        @tweet = Tweet.find(params[:id])","        tweet.destroy","        redirect_to :root","    end","    def edit","        @tweet = Tweet.find(params[:id])","    end","    def update","        @tweet = Tweet.find(params[:id])","        title = params[:tweet][:message]","        @tweet.update(tweet: tweet)","        redirect_to :root","    end"],"id":2},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"remove","lines":["    "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":33,"column":0},"end":{"row":33,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1632037324424,"hash":"4b8b0a78923b1637a693b6f7782d9b85bc7a8da1"}