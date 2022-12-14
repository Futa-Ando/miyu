class TweetsController < ApplicationController
  before_action :authenticate_user!
    def index
        if params[:search] != nil && params[:search] != ''
          #部分検索かつ複数検索
          search = params[:search]
          @tweets = Tweet.joins(:user).where("body LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
        else
          @tweets = Tweet.all
        end
    end

    def new
        @tweet = Tweet.new
        @category = Category.where(iden: 0)
    end
    def create
        @tweet = Tweet.new(tweet_params)
        @genre = @tweet.genre
        @category = Category.where(iden: @genre)
        @tweet.user_id = current_user.id
        if @tweet.save
          redirect_to :action => "index"
        else
          render "tweets/new"
        end
    end
    def show
        @tweet = Tweet.find(params[:id])
        @comments = @tweet.comments
        @comment = Comment.new
    end
    def edit
        @tweet = Tweet.find(params[:id])
    end
    def update
      tweet = Tweet.find(params[:id])
      if tweet.update(tweet_params)
        redirect_to :action => "show", :id => tweet.id
      else
        redirect_to :action => "new"
      end
    end
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      redirect_to action: :index
    end
    
    private
    def tweet_params
      params.require(:tweet).permit(:body, :title, :image, :genre)
    end
end
