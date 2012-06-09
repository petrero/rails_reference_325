class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :price, :author
  
  
  #store_accessor :properties, :author //is provided in Rails3.2 but is incompatible with the gem
  
  def author
    properties && properties["author"]
  end
  
  def author=(value)
    self.properties = (properties || {}).merge("author" => value)
  end
end
