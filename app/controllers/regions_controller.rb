class RegionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @regions = current_user.regions
  end

end
