class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :price
  validates_numericality_of :runtime, allow_blank: true
  
  
  #store_accessor :properties, :author //is provided in Rails3.2 but is incompatible with the gem
  %w[author runtime rating].each do |key|
    attr_accessible key
    define_method(key) do
      properties && properties[key]
    end
    
    define_method("#{key}=") do |value|
      self.properties = (properties || {}).merge(key => value)
    end
  end
end
