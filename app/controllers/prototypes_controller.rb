class PrototypesController < ApplicationController
  before_action :set_prototype, only: %i(show edit update destroy)

  def index
    @prototypes = Prototype.includes(:user).order('likes_count desc').page(params[:page]).per(8)
  end

  def show
    @user = @prototype.user
  end

  def new
    @prototype = Prototype.new
    @prototype.proto_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to root_path, notice: "Post has been completed"
    else
      flash.now[:alert] = "Posting failed"
      render :new
    end
  end

  def edit
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to root_path, notice: "Update of post has been completed"
    else
      flash.now[:alert] = "Posting update failed"
      render :edit
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path, notice: "Prototype was successfully deleted."
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, proto_images_attributes: [:id, :image, :status])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end
