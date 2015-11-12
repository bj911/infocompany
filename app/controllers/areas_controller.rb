class AreasController < ApplicationController
  before_action :set_area, only: [:show, :edit, :update]
  before_action :set_region, only: [:index, :create, :new]

  def index
    @areas = Area.where(region_id: @region.id)
  end

  def show
  end

  def new
    @area = Area.new
  end

  def create
    Area.create(name: params[:area][:name], region_id: @region.id)
    redirect_to region_areas_path(@region.id)
  end

  def edit
  end

  def update
    @area.update(area_params)
    redirect_to region_areas_path(@area.region_id)
  end

  private

  def area_params
    params.require(:area).permit(:name)
  end

  def set_area
    @area = Area.find(params[:id])
  end

  def set_region
    @region = Region.find(params[:region_id])
  end

end
