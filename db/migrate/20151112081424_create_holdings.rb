class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.string :name
      t.integer :region_id
      t.string :contacts

      t.timestamps null: false
    end
  end
end
