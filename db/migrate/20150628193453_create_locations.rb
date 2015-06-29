class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :state_id
      t.float :lat
      t.float :lng
      t.integer :state_id
      t.integer :zip
      t.string :name
      t.text :description
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
