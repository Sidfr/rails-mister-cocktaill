class CocktaillsController < ApplicationController
  before_action :require_find_param, only: [:show]

  def index
    @cocktaills = Cocktaill.all
  end

  def show
  end

  def create
        @cocktaill = Cocktaill.new(cocktaill_params)
    if @cocktaill.save
      redirect_to cocktaills_path
    else
      render :new
    end
  end

  def new
    @cocktaill = Cocktaill.new
  end

  private

  def cocktaill_params
    params.require(:cocktaill).permit(:name, photos: [])
  end

  def require_find_param
    @cocktaill = Cocktaill.find(params[:id])
  end
end
