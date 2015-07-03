class Media < ActiveRecord::Base
  self.abstract_class = true
  include OrmAbstractor
  
  def initialize
    init_abstract
    super
  end

  def init_abstract
  	required_child_methods :merchant
  end	

  validates_presence_of :merchant_id

end
