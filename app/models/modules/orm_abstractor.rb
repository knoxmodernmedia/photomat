module OrmAbstractor 
#this solves the problem of abstracting methods that 
#represent tables to parent classes. If the DB table for the child class
#does not contain a property required by the parent class, a corrisponding error is thrown. 
#this mimics classical inheritance, in that any required by the parent but not implemented by
#the child causes a NoMethodError

  def required_child_methods(args=[])
    args.each do |arg|
      test_for_method(arg)
    end	
  end	




  def test_for_method(m)
    unless method(m).super_method.defined? 
      raise NoMethodError, "#{self.class.name} does not have required database schema for method {m.to_s}."
    end
  end

end
