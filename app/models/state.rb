class State < ActiveRecord::Base
has_many :customers
has_many :merchants
has_many :locations
validates_presence_of :abbreviation, :full_name
end
