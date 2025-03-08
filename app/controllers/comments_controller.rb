class CommentsController < ApplicationController
  before_action :authenticate_reader!

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.build(comment_params)
    @comment.reader_id = current_reader.id
  
    if @comment.save
      respond_to do |format|
        format.json { render json: { success: true, comment: @comment } }
      flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path)
      end
    else
      respond_to do |format|
        format.json { render json: { success: false, errors: @comment.errors.full_messages }, status: :unprocessable_entity }
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :rate, :vote_volume)
    end
end