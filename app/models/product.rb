class Product < ActiveRecord::Base
  self.abstract_class = true
  require OrmAbstractor
  before_filter :init_abstract

  def init_abstract
  	required_child_methods :price, :merchant
  end	

  validates_presence_of :price, :merchant_id

end
