class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :category_id, :released_at, :discontinued_at, :stock

  scope :released,          -> {where("released_at <= ?", Time.zone.now)}
  scope :not_discontinued,   -> {where("discontinued_at is null or discontinued_at > ?", Time.zone.now)}
  scope :in_stock,          -> {where("stock >= ?", 2)}
  scope :available,         -> {released.not_discontinued.in_stock}
  scope :search,            ->(query) { available.where("name like ?", "%#{query}%") }
end
