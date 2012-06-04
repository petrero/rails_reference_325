class Article < ActiveRecord::Base
  attr_accessible :author, :content, :name
  translates :name, :content
  
  class Translation
    attr_accessible :locale
  end

end
