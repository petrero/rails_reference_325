class Article < ActiveRecord::Base
  attr_accessible :author, :content, :edit, :index, :name, :new, :show
end
