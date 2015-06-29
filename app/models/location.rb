class Location < ActiveRecord::Base
belongs_to :state
has_many :photo_products
end
