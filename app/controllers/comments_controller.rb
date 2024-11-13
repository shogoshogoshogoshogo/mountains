class CommentsController < ApplicationController
    def create
      comment = Comment.create(comment_params)
      redirect_to "/mountains/#{comment.mountain.id}" 
    end

private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, mountain_id: params[:mountain_id])
  end
end