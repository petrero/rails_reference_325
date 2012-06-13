class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :category_id, :released_at, :discontinued_at, :stock

  def self.search(query)
    match(
      released_at: {lteq: Time.zone.now},
      discontinued_at: [nil, {gt: Time.zone.now}],
      stock: {gteq: 2},
      name: {matches: "%#{query}%"}
    )
  end
end
