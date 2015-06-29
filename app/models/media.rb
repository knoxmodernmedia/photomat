class Media < ActiveRecord::Base
  self.abstract_class = true
  require OrmAbstractor
  before_filter :init_abstract

  def init_abstract
  	required_child_methods :merchant
  end	

  validates_presence_of :merchant_id

end
