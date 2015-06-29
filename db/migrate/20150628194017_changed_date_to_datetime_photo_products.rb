class ChangedDateToDatetimePhotoProducts < ActiveRecord::Migration
  def change
  	rename_column :photo_products, :date_taken, :datetime_taken
  end
end
