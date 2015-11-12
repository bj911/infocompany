class AddCountOfCompaniesToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :count_of_companies, :integer
  end
end
