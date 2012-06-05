class Product < ActiveRecord::Base
  attr_accessible :category, :name, :price, :released_on
end
