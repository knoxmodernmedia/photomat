class User < ActiveRecord::Base
  self.abstract_class = true
  require OrmAbstractor
  before_filter :init_abstract

  def init_abstract
  	required_child_methods :first_name, :last_name, :email, :street_address, :city, :state, :zip, :username
  end	
  belongs_to :state
  
  validates_uniqueness_of :username, :email 

  validates_presence_of :first_name, :last_name, :email, :username
  

end
