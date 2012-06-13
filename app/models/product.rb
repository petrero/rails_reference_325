class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :category_id, :released_at, :discontinued_at, :stock

  def self.search(query)
    where("released_at <= :now and (discontinued_at is null or discontinued_at > :now) and stock >= :stock and name like :query", now: Time.zone.now, stock: 2, query: "%#{query}%")
  end
end
