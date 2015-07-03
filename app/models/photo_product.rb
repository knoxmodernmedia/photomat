class PhotoProduct < Product
  validates_presence_of :price, :merchant_id, :image_id, :location_id, :physical_product, :datetime_taken
  #validates_date_time :datetime_taken
  
  belongs_to :location
  has_one :image
  has_and_belongs_to_many :customers
  has_one :merchant

end
