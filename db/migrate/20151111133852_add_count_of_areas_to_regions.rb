class AddCountOfAreasToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :count_of_areas, :integer
  end
end
