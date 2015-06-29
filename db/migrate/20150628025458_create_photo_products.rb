class CreatePhotoProducts < ActiveRecord::Migration
  def change
    create_table :photo_products do |t|
      t.integer :image_id
      t.integer :location_id
      t.boolean :physical_product
      t.datetime :date_taken
      t.float :price
      t.integer :merchant_id
      t.timestamps null: false
    end
  end
end
