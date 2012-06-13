class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :category_id, :released_at, :discontinued_at, :stock

  generate_scopes
  
  scope :not_discontinued,   -> {where("discontinued_at is null or discontinued_at > ?", Time.zone.now)}
  scope :available,         -> {released_at_lteq(Time.zone.now).not_discontinued.stock_gteq(2)}
  
  
  def self.search(query)
    available.where(arel_table[:name].matches("%#{query}%"))
  end
end
