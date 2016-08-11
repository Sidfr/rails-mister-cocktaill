class CocktaillsController < ApplicationController
  def index
    @cocktaills = Cocktaill.all
  end

  def show
  end

  def create
  end

  def new
  end
end
