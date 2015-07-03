class Product < ActiveRecord::Base
  self.abstract_class = true
  include OrmAbstractor

  def initialize
    init_abstract
    super
  end


  def init_abstract
  	required_child_methods :price, :merchant
  end	

  validates_presence_of :price, :merchant_id

end
