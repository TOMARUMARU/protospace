class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.order('created_at DESC').page(params[:page]).per(8)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: "User information changed"
    else
      flash.now[:alert] = "Failed to update user information"
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :avatar, :email, :member, :profile, :works)
  end
end
