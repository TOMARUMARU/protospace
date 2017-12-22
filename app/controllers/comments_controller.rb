class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    current_user.comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(prototype_id: params[:prototype_id])
  end
end
