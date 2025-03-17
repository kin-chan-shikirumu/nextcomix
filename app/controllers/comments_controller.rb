class CommentsController < ApplicationController
  before_action :authenticate_reader!

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.build(comment_params)
    @comment.reader_id = current_reader.id
  
    if @comment.save
      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment.tweet, notice: 'Comment was successfully created.' }
          format.json { render json: { success: true, comment: @comment } }
        else
          format.html { render :new }
          format.json { render json: { success: false, errors: @comment.errors.full_messages }, status: :unprocessable_entity }
        end
      end
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id], tweet_id: params[:tweet_id])
    @comment.destroy
    flash[:success] = "コメントを削除しました"
    redirect_to tweets_path
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :rate, :vote_volume)
    end
end