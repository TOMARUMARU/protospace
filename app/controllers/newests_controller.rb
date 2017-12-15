class NewestsController < ApplicationController
  def index
    @prototypes = Prototype.newest.page(params[:page]).per(8)
  end
end
