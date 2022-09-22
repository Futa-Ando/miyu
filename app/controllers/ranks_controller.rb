class RanksController < ApplicationController
    def index 
     @rank_tweets = Tweet.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
     @rank_tweets = Tweet.limit(10)

    end
end
