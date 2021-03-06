class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :city
      t.integer :state_id
      t.integer :zip
      t.string :username

      t.timestamps null: false
    end
  end
end
