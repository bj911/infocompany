class HoldingsController < ApplicationController
  before_action :set_area, only: [:show]
  before_action :set_region, only: [:create, :new]

  def new
    @holding = Holding.new
  end

  def create
    @holding = Holding.new(holding_params)
    @holding.save
    redirect_to root_path
  end

  def show
  end

  private

  def holding_params
    params.require(:holding).permit(:name, :contacts, :region_id)
  end

  def set_area
    @holding = Holding.find(params[:id])
  end

  def set_region
    @region = Region.find(params[:region_id])
  end

end
