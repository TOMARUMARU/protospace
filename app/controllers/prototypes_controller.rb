class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
    @prototype.proto_images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      binding.pry
      redirect_to root_path, notice: "Post has been completed"
    else
      flash.now[:alert] = "Posting failed"
      render :new
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, proto_images_attributes: [:image])
  end
end
