class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :holding_id
      t.string :area_id
      t.string :color
      t.string :address
      t.string :description

      t.timestamps null: false
    end
  end
end
