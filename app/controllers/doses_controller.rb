class DosesController < ApplicationController
  before_action :find_cocktaill, only: [ :new, :create ]

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktaill.doses.build(dose_params)
    if @dose.save
      redirect_to cocktaill_path(@cocktaill)
    else
      render "cocktaills/show"
    end
  end

  def destroy
  end


 private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
  def find_cocktaill
    @cocktaill = Cocktaill.find(params[:cocktaill_id])
  end


end
