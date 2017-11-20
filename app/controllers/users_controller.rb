class UsersController < ApplicationController
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
