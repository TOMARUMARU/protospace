class NewestsController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).order('created_at DESC').page(params[:page]).per(8)
  end
end
