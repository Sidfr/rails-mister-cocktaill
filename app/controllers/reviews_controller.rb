class ReviewsController < ApplicationController
  before_action :find_cocktaill, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = @cocktaill.reviews.build(review_params)
    if @review.save
      redirect_to cocktaill_path(@cocktaill)
    else
      render :new
    end

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
  def find_cocktaill
    @cocktaill = Cocktaill.find(params[:cocktaill_id])
  end
end
