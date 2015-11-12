class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update]
  before_action :set_area, only: [:index, :create, :new]

  def index
    @companies = Company.where(area_id: @area.id)
  end

  def show
  end

  def new
    @company = Company.new
    @holding = Holding.new
    @region = @area.region
  end

  def create
    Company.create(company_params)
    redirect_to area_companies_path(@area.id)
  end

  def edit
  end

  def update
    @company.update(company_params)
    redirect_to area_companies_path(@company.area_id)
  end

  private

  def company_params
    params.require(:company).permit(:name, :color, :holding_id, :area_id, :address, :description)
  end

  def set_company
    @company = Company.find(params[:id])
  end

  def set_area
    @area = Area.find(params[:area_id])
  end

end
