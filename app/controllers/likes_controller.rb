class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(like_params)
    @prototype = Prototype.find(params[:prototype_id])
  end

  def destroy
    like = current_user.likes.find_by(user_id: current_user.id)
    like.destroy
    @prototype = Prototype.find(params[:prototype_id])
  end

  private
  def like_params
    params.permit(:prototype_id)
  end

end
