class LikesController < ApplicationController

  def create
    like = current_reader.likes.create(tweet_id: params[:tweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    like = Like.find_by(tweet_id: params[:tweet_id], reader_id: current_reader.id)
    like.destroy
    redirect_back(fallback_location: root_path)
  end
end
