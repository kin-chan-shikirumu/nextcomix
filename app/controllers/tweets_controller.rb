class TweetsController < ApplicationController
  before_action :authenticate_reader!, except: [:thumb, :show]

  def home
    
  end
  def thumb
      if params[:search] == nil
        @tweets= Tweet.all
      elsif params[:search] == ''
        @tweets= Tweet.all
      else
        @tweets = Tweet.where("title LIKE ? ",'%' + params[:search] + '%')
      end

      if params[:tag_ids]
        @tweets = []
        params[:tag_ids]. each do |key, value|
          @tweets += Tag.find_by(name: key).tweets if value == "1"
        end
        @tweets.uniq!
      end
    
      if params[:tag]
        Tag.create(name: params[:tag])
      end
    end
    def new
      @tweet = Tweet.new
    end

    def create
      tweet = Tweet.new(tweet_params)
      tweet.reader_id = current_reader.id
      if tweet.save
        redirect_to :action => "thumb"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @tweet = Tweet.find(params[:id])
      @comments = @tweet.comments
      @comment = Comment.new
      @vote_results = Comment.where(tweet_id: @tweet.id).group(:vote_volume).count
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

    def ranking2000
      circulationtotwothousand = params[:circulationtotwothousand]
      @ranking_tweets = Tweet.order(circulationtotwothousand: :desc).limit(10)
    end

    def ranking2010
      circulationtotwentyten = params[:circulationtotwentyten]
      @ranking_tweets = Tweet.order(circulationtotwentyten: :desc).limit(10)
    end

    def ranking2015
      circulationtotwentyfifteen = params[:circulationtotwentyfifteen]
      @ranking_tweets = Tweet.order(circulationtotwentyfifteen: :desc).limit(10)
    end

    def ranking2020
      circulationtotwentytwenty = params[:circulationtotwentytwenty]
      @ranking_tweets = Tweet.order(circulationtotwentytwenty: :desc).limit(10)
    end

    def ranking2025
      circulationtotwentytwentyfive = params[:circulationtotwentytwentyfive]
      @ranking_tweets = Tweet.order(circulationtotwentytwentyfive: :desc).limit(10)
    end

    def rankingtotal
      circulationtotal = params[:circulationtotal]
      @ranking_tweets = Tweet.order(circulationtotal: :desc).limit(10)
    end
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      redirect_to action: :thumb
    end

  private
  
  def tweet_params
    params.require(:tweet).permit(:title, :image, :about, :body, :author, :serialization, :volume, :circulationtotal, :circulation, :circulationtotwothousand, :circulationtotwentyten, :circulationtotwentyfifteen, :circulationtotwentytwenty, :circulationtotwentytwentyfive, :award, :app, tag_ids: [])
  end

  def if_not_admin
    redirect_to root_path unless current_reader.email == ENV['ADMIN_EMAIL']
  end
end
